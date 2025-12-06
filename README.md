# 🧬 Atom Visualizer

An OpenGL simulation of an atom showing **orbiting electrons** or a **quantum probability cloud** based on the **1s orbital wave function (|ψ|²)**.

---

## 🎨 Preview
<img width="434" height="253" alt="Snímek obrazovky 2025-10-12 175146" src="https://github.com/user-attachments/assets/45535736-813c-45e9-9c77-a174f44cc360" />
<img width="1282" height="793" alt="obrazek" src="https://github.com/user-attachments/assets/e59e3592-a814-42d7-a5e4-2255ec053ee4" />
Probability cloud with keybord F2

---

## ⚙️ Description
This project visualizes:
- **Protons and neutrons** forming a vibrating atomic nucleus  
- **Electrons** that can either orbit the nucleus or appear as a **quantum probability cloud**  
- **Monte Carlo sampling** to generate realistic electron density distributions based on the hydrogen 1s orbital  

The model is **not to scale**, but provides an intuitive visual understanding of atomic structure.

---

## 🎮 Controls
| Key | Action |
|:---:|:--------|
| **W / A / S / D** | Move the camera |
| **Mouse** | Rotate the view |
| **Shift** | Move faster |
| **Space** | Toggle between orbiting electrons and the probability cloud |
| **ESC** | Exit the program |

---

## 🧰 Requirements
- [GLFW](https://www.glfw.org/)
- [GLM](https://github.com/g-truc/glm)
- OpenGL 3.3+

---

## 🧩 Building

### 🐧 Linux / macOS
```bash
g++ src/main.cpp -lglfw -lGL -ldl -lX11 -lpthread -o atom
./atom
```
## 🔬 How it works

The probability density for the 1s orbital is given by:

$$
P(r) = \frac{1}{\pi a^3} e^{-2r/a}
$$

where  
- \( a \) — Bohr radius  
- \( r \) — distance from the nucleus  
Points in the cloud are generated using Monte Carlo rejection sampling, where denser regions correspond to a higher probability of finding an electron.

You can adjust the number of samples for quality/performance balance:

```sampleCloud_1s(50000, 6.0f * BOHR);```
