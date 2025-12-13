#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include <glm/gtc/constants.hpp> 	
#include <iostream>
#include <vector>
#include <cmath>
#include <raylib.h>
#include <complex>
#include <ctime>

// Náhodné číslo 0–1
static inline float rand01() {
	return (float)rand() / (float)RAND_MAX;
}

const float BOHR = 3.0f; // měřítko 
const float P1S_MAX = 1.0f / (M_PI * BOHR * BOHR * BOHR); // max hustota pro 1s
const float P3D_MAX = 0.002f;
int currentOrbital = 0; // 0=z2, 1=x2-y2, 2=xy, 3=xz, 4=yz
bool orbitalChanged = false;

float probability_1s(float x, float y, float z) {
	float r = sqrt(x*x + y*y + z*z);
	float a = BOHR;
	return (1.0f / (M_PI * a*a*a)) * expf(-2.0f * r / a);
}

float probability_3d_z2(float x, float y, float z) {
	float r = sqrtf(x*x + y*y + z*z);
	float a = BOHR;
	
	float R = (r*r*r*r) * expf(-2.0f * r / (3.0f * a)) / (6561.0f * 30.0f * a*a*a*a*a);
	
	float theta = acosf(z / (r + 1e-6f));
	float phi = atan2f(y, x);
	float Y;
	
	switch(currentOrbital) {
		case 0: Y = sqrt(5.0f/(16.0f*(float)M_PI)) * (3.0f*cos(theta)*cos(theta)-1.0f); break;           // d_z2
		case 1: Y = sqrt(15.0f/(16.0f*(float)M_PI)) * sin(theta)*sin(theta)*cos(2.0f*phi); break;     // d_x2−y2
		case 2: Y = sqrt(15.0f/(16.0f*(float)M_PI)) * sin(theta)*sin(theta)*sin(2.0f*phi); break;     // d_xy
		case 3: Y = sqrt(15.0f/(4.0f*(float)M_PI))  * sin(theta)*cos(theta)*cos(phi); break;       // d_xz
		case 4: Y = sqrt(15.0f/(4.0f*(float)M_PI))  * sin(theta)*cos(theta)*sin(phi); break;       // d_yz
		default: Y = 0.0f; break;
	}
	
	return R * Y * Y;
}

std::vector<glm::vec3> sampleCloud_3d_z2(int N, float Rmax) {
	std::vector<glm::vec3> out;
	out.reserve(N);
	while ((int)out.size() < N) {
		float x = (rand01()*2.0f - 1.0f) * Rmax;
		float y = (rand01()*2.0f - 1.0f) * Rmax;
		float z = (rand01()*2.0f - 1.0f) * Rmax;
		float p = probability_3d_z2(x, y, z) / P3D_MAX;
		if (rand01() < p) out.emplace_back(x, y, z);
	}
	return out;
}

// Náhodné vzorkování podle 1s orbitalu (Monte Carlo rejection)
std::vector<glm::vec3> sampleCloud_1s(int N, float Rmax) {
	std::vector<glm::vec3> out;
	out.reserve(N);
	while ((int)out.size() < N) {
		float x = (rand01() * 2.0f - 1.0f) * Rmax;
		float y = (rand01() * 2.0f - 1.0f) * Rmax;
		float z = (rand01() * 2.0f - 1.0f) * Rmax;
		if (x*x + y*y + z*z > Rmax*Rmax) continue;
		float p = probability_1s(x, y, z) / P1S_MAX;
		if (rand01() < p)
			out.emplace_back(x, y, z);
	}
	return out;
}

bool showProbCloud = false;

// Pohyb kamery WASD
glm::vec3 cameraPos   = glm::vec3(0.0f, 0.0f, 40.0f); 
glm::vec3 cameraFront = glm::vec3(0.0f, 0.0f, -1.0f);
glm::vec3 cameraUp    = glm::vec3(0.0f, 1.0f, 0.0f);

float cameraSpeed = 0.05f;
float yaw   = -90.0f;
float pitch = 0.0f;
float lastX = 400, lastY = 300;
bool firstMouse = true;

float electronAngularSpeed = 1.0f;
float defaultOrbitRadius = 30.0f; 

// Callback pro změnu velikosti okna
void framebuffer_size_callback(GLFWwindow* window, int width, int height) {
	glViewport(0, 0, width, height);
}

// Perspektiva
void perspectiveGL(double fovY, double aspect, double zNear, double zFar) {
	const double pi = 3.14159265358979323846;
	double fH = tan(fovY / 360.0 * pi) * zNear;
	double fW = fH * aspect;
	glFrustum(-fW, fW, -fH, fH, zNear, zFar);
}

// LookAt
void lookAtGL(double eyeX, double eyeY, double eyeZ,
	double centerX, double centerY, double centerZ,
	double upX, double upY, double upZ) {
		glm::vec3 f(centerX - eyeX, centerY - eyeY, centerZ - eyeZ);
		f = glm::normalize(f);
		glm::vec3 up(upX, upY, upZ);
		up = glm::normalize(up);
		glm::vec3 s = glm::normalize(glm::cross(f, up));
		glm::vec3 u = glm::cross(s, f);
		
		float m[16] = {
			s.x,  u.x,  -f.x,  0.0f,
			s.y,  u.y,  -f.y,  0.0f,
			s.z,  u.z,  -f.z,  0.0f,
			0.0f, 0.0f, 0.0f,  1.0f
		};
		
		glMultMatrixf(m);
		glTranslated(-eyeX, -eyeY, -eyeZ);
	}

// Jednoduché vykreslení koule
void drawSphere(float radius, int slices, int stacks) {
	for (int i = 0; i <= stacks; ++i) {
		float V   = (float)i / (float)stacks;
		float phi = V * M_PI;
		
		glBegin(GL_TRIANGLE_STRIP);
		for (int j = 0; j <= slices; ++j) {
			float U = (float)j / (float)slices;
			float theta = U * (M_PI * 2.0f);
			
			float x = cos(theta) * sin(phi);
			float y = cos(phi);
			float z = sin(theta) * sin(phi);
			glVertex3f(x * radius, y * radius, z * radius);
			
			float phi2 = phi + M_PI / (float)stacks;
			float x2 = cos(theta) * sin(phi2);
			float y2 = cos(phi2);
			float z2 = sin(theta) * sin(phi2);
			glVertex3f(x2 * radius, y2 * radius, z2 * radius);
		}
		glEnd();
	}
}


glm::vec3 vibrateNucleus(const glm::vec3 &p, float t) {
	float s = 0.02f;
	return p + glm::vec3(
		sinf(t * 6.3f + p.x * 12.1f) * s,
		sinf(t * 7.1f + p.y * 9.7f) * s,
		sinf(t * 5.5f + p.z * 11.3f) * s
		);
}

// Pohyb klávesnice
void processInput(GLFWwindow* window) {
	if (glfwGetKey(window, GLFW_KEY_W) == GLFW_PRESS)
		cameraPos += cameraSpeed * cameraFront;
	if (glfwGetKey(window, GLFW_KEY_S) == GLFW_PRESS)
		cameraPos -= cameraSpeed * cameraFront;
	if (glfwGetKey(window, GLFW_KEY_A) == GLFW_PRESS)
		cameraPos -= glm::normalize(glm::cross(cameraFront, cameraUp)) * cameraSpeed;
	if (glfwGetKey(window, GLFW_KEY_D) == GLFW_PRESS)
		cameraPos += glm::normalize(glm::cross(cameraFront, cameraUp)) * cameraSpeed;
	
	if (glfwGetKey(window, GLFW_KEY_LEFT_SHIFT) == GLFW_PRESS)
		cameraSpeed = 0.3f;
	else
		cameraSpeed = 0.05f;
}
// key_callback
void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods) {
	if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
		glfwSetWindowShouldClose(window, GLFW_TRUE);
	
	if (key == GLFW_KEY_SPACE && action == GLFW_PRESS)
		showProbCloud = !showProbCloud;
	
	if (action == GLFW_PRESS) {
		switch(key) {
			case GLFW_KEY_F1: currentOrbital = 0; orbitalChanged = true; break;
			case GLFW_KEY_F2: currentOrbital = 1; orbitalChanged = true; break;
			case GLFW_KEY_F3: currentOrbital = 2; orbitalChanged = true; break;
			case GLFW_KEY_F4: currentOrbital = 3; orbitalChanged = true; break;
			case GLFW_KEY_F5: currentOrbital = 4; orbitalChanged = true; break;
		}
	}
}
// Myš
void mouse_callback(GLFWwindow* window, double xpos, double ypos) {
	if (firstMouse) {
		lastX = (float)xpos;
		lastY = (float)ypos;
		firstMouse = false;
	}
	
	float xoffset = (float)xpos - lastX;
	float yoffset = lastY - (float)ypos;
	lastX = (float)xpos;
	lastY = (float)ypos;
	
	float sensitivity = 0.1f;
	xoffset *= sensitivity;
	yoffset *= sensitivity;
	
	yaw   += xoffset;
	pitch += yoffset;
	
	if (pitch > 89.0f) pitch = 89.0f;
	if (pitch < -89.0f) pitch = -89.0f;
	
	glm::vec3 front;
	front.x = cos(glm::radians(yaw)) * cos(glm::radians(pitch));
	front.y = sin(glm::radians(pitch));
	front.z = sin(glm::radians(yaw)) * cos(glm::radians(pitch));
	cameraFront = glm::normalize(front);
}


glm::vec3 getParticlePosition(float baseX, float baseY, float baseZ, float time) {
	float offsetX = 0.15f * sin(time * 0.5f + baseX);
	float offsetY = 0.15f * cos(time * 0.5f + baseY);
	float offsetZ = 0.15f * sin(time * 0.6f + baseZ);
	return glm::vec3(baseX + offsetX, baseY + offsetY, baseZ + offsetZ);
}


const float EV_TO_J = 1.602176634e-19f;
const float HBAR = 1.054571817e-34f;


const float E3_EV = -13.6f / (3.0f*3.0f); // n=3
const float E4_EV = -13.6f / (4.0f*4.0f); // n=4
const float E3 = E3_EV * EV_TO_J;
const float E4 = E4_EV * EV_TO_J;


static std::complex<float> psi_3d_z2_complex(float x, float y, float z) {
	float r = sqrtf(x*x + y*y + z*z) + 1e-12f;
	float a = BOHR;
	
	float R = (r*r) * expf(-r / (3.0f * a));
	
	float cos_t = z / r;
	float Y = (3.0f * cos_t * cos_t - 1.0f);
	
	return std::complex<float>(R * Y, 0.0f);
}

static std::complex<float> psi_4p_z_complex(float x, float y, float z) {
	float r = sqrtf(x*x + y*y + z*z) + 1e-12f;
	float a = BOHR;

	float R = r * expf(-r / (4.0f * a));
	
	float cos_t = z / r;
	float Y = cos_t;
	return std::complex<float>(R * Y, 0.0f);
}

//Časově zavisla schrodingerova rovnice
float probability_superposition_3d4p(float x, float y, float z, float t) {
	using C = std::complex<float>;

	C c1 = C(0.70710678f, 0.0f);
	C c2 = C(0.70710678f, 0.0f);
	
	
	C psi3 = psi_3d_z2_complex(x,y,z);
	C psi4 = psi_4p_z_complex(x,y,z);
	
	
	float phi3 = - (E3 / HBAR) * t;
	float phi4 = - (E4 / HBAR) * t;
	C phase3 = C(cosf(phi3), sinf(phi3));
	C phase4 = C(cosf(phi4), sinf(phi4));
	
	C Psi = c1 * psi3 * phase3 + c2 * psi4 * phase4;
	float prob = std::norm(Psi); 
	
	return prob;
}

// Můžeš ladit podle výkonu.
const float P3D_APPROX_MAX = 0.0025f;
const float P4P_APPROX_MAX = 0.0010f;
const float P_SUPER_MAX = P3D_APPROX_MAX + P4P_APPROX_MAX + 2.0f*sqrt(P3D_APPROX_MAX * P4P_APPROX_MAX);

std::vector<glm::vec3> sampleCloud_superposition(int N, float Rmax, float t) {
	std::vector<glm::vec3> out;
	out.reserve(N);
	int tries = 0;
	while ((int)out.size() < N) {
		if (++tries > N * 200) break;
		
		float x = (rand01()*2.0f - 1.0f) * Rmax;
		float y = (rand01()*2.0f - 1.0f) * Rmax;
		float z = (rand01()*2.0f - 1.0f) * Rmax;
		if (x*x + y*y + z*z > Rmax*Rmax) continue;
		
		float p = probability_superposition_3d4p(x, y, z, t) / P_SUPER_MAX;
		if (p > 1.0f) p = 1.0f; 
		if (rand01() < p) out.emplace_back(x, y, z);
	}
	return out;
}

void renderAtom() {
	if (!glfwInit()) {
		std::cout << "GLFW init failed\n";
		return;
	}
	
	srand((unsigned int)time(NULL));
	
	GLFWwindow* window = glfwCreateWindow(1280, 800, "Atom", NULL, NULL);
	if (!window) {
		std::cout << "Window creation failed!\n";
		glfwTerminate();
		return;
	}
	glfwMakeContextCurrent(window);
	glfwSetFramebufferSizeCallback(window, framebuffer_size_callback);
	glfwSetCursorPosCallback(window, mouse_callback);
	glfwSetKeyCallback(window, key_callback);
	glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);
	
	glEnable(GL_DEPTH_TEST);
	glClearColor(0.0f, 0.0f, 0.0f, 1.0f);
	glEnable(GL_BLEND);
	glBlendFunc(GL_SRC_ALPHA, GL_ONE);
	
	glMatrixMode(GL_PROJECTION);
	glLoadIdentity();
	perspectiveGL(60.0, 1280.0 / 800.0, 0.1, 1000.0);
	glMatrixMode(GL_MODELVIEW);
	
	std::vector<glm::vec3> cloud;
	
	std::vector<glm::vec3> nucleusPositions;
	nucleusPositions.push_back(glm::vec3(-0.08f,  0.04f, 0.0f)); // nukleon 1
	nucleusPositions.push_back(glm::vec3( 0.10f,  0.03f, 0.0f)); // nukleon 2
	nucleusPositions.push_back(glm::vec3(-0.05f, -0.09f, 0.01f)); // nukleon 3
	nucleusPositions.push_back(glm::vec3( 0.07f, -0.06f, -0.02f)); // nukleon 4
	
	float nucleusScale = 0.08f; 
	
	// nastavení vzorkování - uprav podle výkonu
	const int POINT_COUNT = 12000; 
	const float SAMPLE_RMAX = 12.0f * BOHR;
	
	while (!glfwWindowShouldClose(window)) {
		processInput(window);
		glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
		float time = (float)glfwGetTime();
		
		glMatrixMode(GL_MODELVIEW);
		glLoadIdentity();
		glm::vec3 center = cameraPos + cameraFront;
		lookAtGL(cameraPos.x, cameraPos.y, cameraPos.z,
			center.x, center.y, center.z,
			cameraUp.x, cameraUp.y, cameraUp.z);
		
	
		cloud = sampleCloud_superposition(POINT_COUNT, SAMPLE_RMAX, time);
		
		//oblak
		if (showProbCloud) {
			glEnable(GL_BLEND);
			glBlendFunc(GL_SRC_ALPHA, GL_ONE);
			glPointSize(2.0f);
			glBegin(GL_POINTS);
			for (auto &p : cloud) {
				
				float prob = probability_superposition_3d4p(p.x, p.y, p.z, time);
				float a = glm::clamp(prob / P_SUPER_MAX, 0.0f, 1.0f) * 0.18f; 
				glColor4f(0.2f, 0.4f, 1.0f, a);
				glVertex3f(p.x, p.y, p.z);
			}
			glEnd();
			glDisable(GL_BLEND);
		}
		
		
		glEnable(GL_DEPTH_TEST);
		for (auto p : nucleusPositions) {
			glm::vec3 pp = vibrateNucleus(p, time);
			int idx = &p - &nucleusPositions[0]; 
		}
		
		for (size_t i = 0; i < nucleusPositions.size(); ++i) {
			glm::vec3 p = vibrateNucleus(nucleusPositions[i], time);
			if (i % 2 == 0) glColor3f(1.0f, 0.2f, 0.2f); // proton (červenější)
			else glColor3f(0.9f, 0.9f, 0.95f); // neutron (světle šedá)
			
			glPushMatrix();
			glTranslatef(p.x, p.y, p.z);
			drawSphere(nucleusScale, 32, 16);
			glPopMatrix();
		}
		
		float orbitRadius = defaultOrbitRadius;
		float angle = time * electronAngularSpeed;
		
		glm::vec3 electron1 = glm::vec3(cos(angle) * orbitRadius, 0.0f, sin(angle) * orbitRadius);
		glm::vec3 electron2 = glm::vec3(cos(angle + glm::pi<float>()) * orbitRadius, 0.0f, sin(angle + glm::pi<float>()) * orbitRadius);
		
		if (!showProbCloud) {
			
			for (int i = 0; i < 2; ++i) {
				glm::vec3 epos = (i == 0) ? electron1 : electron2;
				glPushMatrix();
				glTranslatef(epos.x, epos.y, epos.z);
				glColor4f(0.4f, 0.8f, 1.0f, 1.0f);  
				drawSphere(0.11f, 28, 16);  
				glColor4f(0.35f, 0.75f, 1.0f, 0.55f);
				drawSphere(0.35f, 28, 16);
				glPopMatrix();
			}
		}
		
		if (orbitalChanged) {
			orbitalChanged = false;
		}
		glfwSwapBuffers(window);
		glfwPollEvents();
	}
	glfwTerminate();
}

