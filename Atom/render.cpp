#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include <glm/gtc/constants.hpp> 	
#include <iostream>
#include <vector>
#include <cmath>

// === Pravděpodobnostní oblak (1s orbital) ===

// Náhodné číslo 0–1
static inline float rand01() {
	return (float)rand() / (float)RAND_MAX;
}

const float BOHR = 3.0f; // měřítko 
const float P1S_MAX = 1.0f / (M_PI * BOHR * BOHR * BOHR); // max hustota pro 1s

float probability_1s(float x, float y, float z) {
	float r = sqrt(x*x + y*y + z*z);
	float a = BOHR;
	return (1.0f / (M_PI * a*a*a)) * expf(-2.0f * r / a);
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
glm::vec3 cameraPos   = glm::vec3(0.0f, 0.0f, 15.0f);
glm::vec3 cameraFront = glm::vec3(0.0f, 0.0f, -1.0f);
glm::vec3 cameraUp    = glm::vec3(0.0f, 1.0f, 0.0f);

float cameraSpeed = 0.05f;
float yaw   = -90.0f;
float pitch = 0.0f;
float lastX = 400, lastY = 300;
bool firstMouse = true;

float electronAngularSpeed = 1.0f;
float defaultOrbitRadius = 6.0f;

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

// key_callback
void key_callback(GLFWwindow* window, int key, int scancode, int action, int mods) {
	if (key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
		glfwSetWindowShouldClose(window, GLFW_TRUE);
	
	if (key == GLFW_KEY_SPACE && action == GLFW_PRESS) { 
		showProbCloud = !showProbCloud;
		std::cout << (showProbCloud ? "Zobrazuji pravdepodobnostni oblak\n"
			: "Zobrazuji obihajici elektrony\n");
	}
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
	if(glfwGetKey(window, GLFW_KEY_LEFT_SHIFT) == GLFW_PRESS)
		cameraSpeed = 0.1f;
	else
		cameraSpeed = 0.05f;
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

// Vibrační posuny
glm::vec3 getParticlePosition(float baseX, float baseY, float baseZ, float time) {
	float offsetX = 0.15f * sin(time * 0.5f + baseX);
	float offsetY = 0.15f * cos(time * 0.5f + baseY);
	float offsetZ = 0.15f * sin(time * 0.6f + baseZ);
	return glm::vec3(baseX + offsetX, baseY + offsetY, baseZ + offsetZ);
}

// === Hlavní render ===
void renderAtom() {
	if (!glfwInit()) {
		std::cout << "GLFW init failed\n";
		return;
	}
	
	GLFWwindow* window = glfwCreateWindow(800, 600, "Atom", NULL, NULL);
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
	perspectiveGL(60.0, 800.0 / 600.0, 0.1, 100.0);
	glMatrixMode(GL_MODELVIEW);
	
	std::vector<glm::vec3> cloud = sampleCloud_1s(50000, 6.0f * BOHR);
	
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
		
		// === Oblak ===
		if (showProbCloud) {
			glEnable(GL_BLEND);
			glBlendFunc(GL_SRC_ALPHA, GL_ONE);
			glPointSize(2.0f);
			glBegin(GL_POINTS);
			glColor4f(0.3f, 0.6f, 1.0f, 0.15f);
			for (auto &p : cloud)
				glVertex3f(p.x, p.y, p.z);
			glEnd();
			glDisable(GL_BLEND);
		}
		
		// === Jádro ===
		std::vector<glm::vec3> positions;
		positions.push_back(getParticlePosition(-0.75f, 0.0f, 0.0f, time)); 
		positions.push_back(getParticlePosition(0.03f, 1.5f, 0.0f, time)); 
		positions.push_back(getParticlePosition(0.75f, 0.0f, 0.0f, time)); 
		positions.push_back(getParticlePosition(0.03f, -1.5f, 0.0f, time));
		
		float orbitRadius = defaultOrbitRadius;
		float angle = time * electronAngularSpeed;
		glm::vec3 electron1 = glm::vec3(cos(angle) * orbitRadius, 0.0f, sin(angle) * orbitRadius);
		glm::vec3 electron2 = glm::vec3(cos(angle + glm::pi<float>()) * orbitRadius, 0.0f, sin(angle + glm::pi<float>()) * orbitRadius);
		positions.push_back(electron1);
		positions.push_back(electron2);
		
		glEnable(GL_BLEND);
		glBlendFunc(GL_SRC_ALPHA, GL_ONE); 
		
		// Protony
		glColor3f(1.0f, 0.0f, 0.0f);
		for (int i = 0; i < 2; ++i) {
			glPushMatrix();
			glTranslatef(positions[i].x, positions[i].y, positions[i].z);
			drawSphere(0.15f, 32, 16);
			glPopMatrix();
		}
		
		// Neutrony
		glColor3f(1.0f, 1.0f, 1.0f);
		for (int i = 2; i < 4; ++i) {
			glPushMatrix();
			glTranslatef(positions[i].x, positions[i].y, positions[i].z);
			drawSphere(0.15f, 32, 16);
			glPopMatrix();
		}
		
		// Elektrony
		if (!showProbCloud) {
			for (int i = 4; i < 6; ++i) {
				glPushMatrix();
				glTranslatef(positions[i].x, positions[i].y, positions[i].z);
				glColor4f(0.2f, 0.6f, 1.0f, 0.8f);
				drawSphere(0.1f, 32, 16);
				glColor4f(0.3f, 0.6f, 1.0f, 0.3f);
				drawSphere(0.3f, 32, 16);
				glPopMatrix();
			}
		}
		
		glfwSwapBuffers(window);
		glfwPollEvents();
	}
	glfwTerminate();
}
