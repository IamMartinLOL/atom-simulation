#ifndef MATH_H
#define MATH_H
#include<iostream>
#include<cmath>
#include<vector>
#include <GLFW/glfw3.h>
#include <glm/glm.hpp>
#include <iostream>

float electrostaticForce(float r);

float strongNuclearForce(float r);

float distance_between(std::vector<glm::vec3> position);

float totalStrongForce(const std::vector<glm::vec3>& positions);

#endif
