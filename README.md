# 🧬 Atomic Orbital Visualizer – Quantum Phase Edition

A real-time **OpenGL simulation of atomic orbitals** based on **quantum mechanical wave functions**.

This version extends the original visualization by introducing:

- **quantum phase**
- **orbital superposition**
- **time evolution of the wave function**

The electron cloud is generated using **Monte Carlo sampling of the probability density**

$$
P(\mathbf{r},t) = |\Psi(\mathbf{r},t)|^2
$$

where the wave function evolves according to the **time-dependent Schrödinger equation**.

---

# 📸 Visualization Examples

## ATOM 1 & 2
<img width="420" src="https://github.com/user-attachments/assets/45535736-813c-45e9-9c77-a174f44cc360" />

## ATOM 1 (Probability c.)
<img width="700" src="https://github.com/user-attachments/assets/e59e3592-a814-42d7-a5e4-2255ec053ee4" />

## ATOM 2 (Wave func. phase)
<img width="878" src="https://github.com/user-attachments/assets/cf8084f9-e6e4-46a1-bbb0-575024448d3a" />

# ⚙️ Description

The simulation renders several physical components.

---

## 🧪 Quantum Probability Cloud

The electron cloud represents **the probability of finding an electron in space**.

Points are generated using **Monte Carlo rejection sampling** from

$$
P(\mathbf{r},t) = |\Psi(\mathbf{r},t)|^2
$$

The cloud dynamically changes as the wave function evolves in time.

Higher density of points = higher probability of electron presence.

---

# 🎨 Quantum Phase Visualization

Unlike the previous version, this simulation includes **the phase of the wave function**.

A quantum wave function is generally **complex**:

$$
\Psi(\mathbf{r},t) = |\Psi(\mathbf{r},t)| e^{i\phi(\mathbf{r},t)}
$$

where:

- $|\Psi|$ determines **probability density**
- $\phi$ is the **quantum phase**

The phase contains important physical information and becomes observable when **multiple quantum states interfere**.

In this simulation, **electron colors represent the phase** of the wave function.

Example mapping:

| Phase | Color |
|------|------|
| $0$ | Blue |
| $\pi/2$ | Cyan |
| $\pi$ | Red |
| $3\pi/2$ | Purple |

This allows visualization of **quantum interference patterns**.

---

# 🧠 Time-Dependent Schrödinger Equation

The simulation evolves orbitals using the solution

$$
\Psi(\mathbf{r},t) =
c_1 \psi_1(\mathbf{r}) e^{-iE_1 t/\hbar}
+
c_2 \psi_2(\mathbf{r}) e^{-iE_2 t/\hbar}
$$

Where:

- $\psi_1, \psi_2$ are stationary orbitals
- $E_1, E_2$ are their energies
- $c_1, c_2$ are coefficients of superposition

Because each component evolves with a **different phase velocity**, the interference pattern **changes in time**.

This produces a **dynamic oscillation of the electron cloud**.

---

# ⚛️ Orbital Superposition

The program demonstrates a superposition of:

- **3d orbital**
- **4p orbital**

Wave function:

$$
\Psi(\mathbf{r},t) =
\frac{1}{\sqrt{2}}\psi_{3d}(\mathbf{r})e^{-iE_3t/\hbar}
+
\frac{1}{\sqrt{2}}\psi_{4p}(\mathbf{r})e^{-iE_4t/\hbar}
$$

The probability density becomes

$$
|\Psi|^2 =
|\psi_{3d}|^2 +
|\psi_{4p}|^2 +
2\mathrm{Re}(\psi_{3d}^*\psi_{4p}e^{-i(E_4-E_3)t/\hbar})
$$

The last term produces **quantum interference**, causing the probability cloud to **oscillate and deform over time**.

---

# ⚛️ Atomic Nucleus

The nucleus is rendered as a small cluster of:

- **protons (red)**
- **neutrons (light gray)**

Each nucleon slightly vibrates to create a **dynamic visual effect**.

---

# 🌀 Electron Visualization Modes

Two visualization modes are available.

### Classical Electrons

Simple spheres orbiting the nucleus (Bohr-like visualization).

### Quantum Cloud

Tens of thousands of Monte Carlo sampled points representing the **quantum probability distribution**.

---

# 🎲 Monte Carlo Sampling

The probability distribution is generated using **rejection sampling**.

Example:

```cpp
float p = probability_superposition_3d4p(x, y, z, t) / P_SUPER_MAX;

if (rand01() < p)
    points.emplace_back(x, y, z);
```
---
# 🎮 Controls 
| Key | Action | 
|-----|--------| 
| **W / A / S / D** | Move camera |
| **Mouse** | Rotate camera | 
| **Shift** | Move faster | 
| **Space** | Toggle electrons / cloud | 
| **F1** | 1s orbital | 
| **F2** | 2p orbital |
| **F3** | 3d orbital |
| **F4** | Additional orbital | 
| **ESC** | Exit | 
--- 
# 🧰 Requirements
- **OpenGL 3.3+**
- - **GLFW** - **GLM**
 - - **C++17 compiler**
---
---

# 🧩 Build Instructions 
## 🐧 Linux / macOS
```bash
g++ src/main.cpp -lglfw -lGL -ldl -lX11 -lpthread -o atom
./atom
```
## 🪟 Windows (MinGW)
```bash
g++ src/main.cpp -Iinclude -Llib -lglfw3 -lopengl32 -lgdi32 -o atom.exe
atom.exe
```
--- 
# 🔬 Cloud Density Settings Set cloud resolution:
```cpp
sampleCloud_1s(50000, 6.0f * BOHR);
```
