#include<iostream>
#include<cmath>
#include<vector>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include <iostream>
#include <math.h>
#include"math.h"
// výpočty sil
float electrostaticForce(float r_meters) {
	const double k = 8.988e9;     // Coulombova konstanta
	const double e = 1.602e-19;   // náboj elektronu/protonu (C)
	return (float)((k * e * e) / (r_meters * r_meters));
}

float strongNuclearForce(float r_fm) {
	const double g2 = 13.0;       // bezrozměrná konstanta silné interakce
	const double m_pi = 135.0;    // hmotnost pionu v MeV/c^2
	const double hbar_c = 197.0;  // MeV·fm
	double exponent = -m_pi * r_fm / hbar_c;
	if (r_fm <= 0.1) return 0; // ochrana proti dělení nulou
	return (float)(g2 * exp(exponent) / (r_fm * r_fm));
}

float distance_between(std::vector<glm::vec3> positions){
	float distance = 0.0f;
	for (int i = 0; i < positions.size(); i++) {
		for (int j = i + 1; j < positions.size(); j++) {
			distance = glm::distance(positions[i], positions[j]);
			std::cout << "Distance between " << i << " and " << j << ": " << distance << std::endl;
		}
	}
	return distance;
}
float totalStrongForce(const std::vector<glm::vec3>& positions) {
	float totalForce = 0.0f;
	const float meters_to_fm = 1e15; // převod metrů → femtometry
	
	for (int i = 0; i < positions.size(); i++) {
		for (int j = i + 1; j < positions.size(); j++) {
			// vzdálenost v metrech (OpenGL jednotky ~ metry)
			float distance_m = glm::distance(positions[i], positions[j]);
			// převeď na femtometry
			float distance_fm = distance_m * 1e15f;
			
			totalForce += strongNuclearForce(distance_fm);
			
			std::cout << "Vzdálenost (" << i << "," << j << "): "
			<< distance_fm << " fm, "
			<< "Síla: " << totalForce << " (relativní jednotky)"
			<< std::endl;
		}
	}
	return totalForce;
}
