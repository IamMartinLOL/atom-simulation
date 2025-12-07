# 🧬 Atomic Orbital Visualizer

A real-time **OpenGL simulation** of atomic orbitals based on **quantum mechanical probability densities**.  
Supports multiple electron orbital shapes (1s, 2p, 3d…) using **Monte Carlo sampling** of the wave function $$\(|\psi(\mathbf{r})|^{2}\)$$.

---

## 📸 Visualization Examples

<img width="420" src="https://github.com/user-attachments/assets/45535736-813c-45e9-9c77-a174f44cc360" />
<img width="700" src="https://github.com/user-attachments/assets/e59e3592-a814-42d7-a5e4-2255ec053ee4" />

---

# ⚙️ Description

This program renders:

---

### 🧪 **Quantum Probability Clouds**

Generated using the probability density:

$$
P(\mathbf{r}) = |\psi(\mathbf{r})|^2
$$

Different orbitals are sampled depending on the selected mode (F1–F4).

---

### ⚛️ **Atomic Nucleus**

A vibrating cluster of  
- **protons (red)**  
- **neutrons (gray)**  

providing a stylized representation of nuclear structure.

---

### 🌀 **Electrons**

Two visualization modes:
- classical moving spheres (Bohr-like model)  
- quantum probability cloud with tens of thousands of Monte-Carlo samples  

---

### 🎲 **Monte Carlo Sampling**

Electron distributions are produced using rejection or importance sampling for:

$$
P(r) \propto e^{-2r/a}
$$

and for higher orbitals:

$$
P(r,\theta,\phi) = |\psi_{nlm}(r,\theta,\phi)|^2
$$

---

# 🧮 Quantum Mechanics Behind the Simulation

---

## ⭐ 1s Orbital

Radial probability density:

$$
P_{1s}(r) = \frac{1}{\pi a^3} e^{-2r/a}
$$

Wave function:

$$
\psi_{1s}(r) = \frac{1}{\sqrt{\pi a^3}} e^{-r/a}
$$

Visual: **spherical cloud**, maximal density at nucleus.

---

## 🔷 2p Orbital
$$
\[
\psi_{2p}(r,\theta) =
\frac{1}{4\sqrt{2\pi a^3}}
\left(\frac{r}{a}\right)e^{-r/2a}\cos\theta
\]
$$

$$
\[
P_{2p}(r,\theta) = |\psi_{2p}|^2
\]
$$

Visual:  
- **two lobes**  
- **one angular node**

---

## 🔶 3d Orbital (example: $$\( d_{z^2} \)$$)

$$
\psi_{3d}(r,\theta) =
\frac{1}{81\sqrt{6\pi a^3}}
\left(\frac{r}{a}\right)^2
e^{-r/3a}\left(3\cos^2\theta - 1\right)
$$

Creates a **toroidal ring + two axial lobes**.

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
- **GLFW**  
- **GLM**  
- **C++17 compiler**

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

# 🔬 Cloud Density Settings

Set cloud resolution:

```cpp
sampleCloud_1s(50000, 6.0f * BOHR);
```

Higher number = smoother cloud, heavier GPU load.

---
