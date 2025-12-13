This project demonstrates both static orbitals and a time-dependent quantum superposition, sampled using Monte Carlo rejection sampling and rendered as a glowing probability cloud.

#### Quantum Model (Summary)
## Mathematical Background
Time-dependent Schrödinger equation:

$i\hbar \frac{\partial \Psi(\mathbf{r},t)}{\partial t} = \hat{H}\Psi(\mathbf{r},t)$

Hydrogen energy levels:

$E_n = -\frac{13.6\ \text{eV}}{n^2}$

Used states:

$E_3 = -\frac{13.6}{3^2}\ \text{eV}, \quad
   E_4 = -\frac{13.6}{4^2}\ \text{eV}$

Stationary states:

$\Psi_{n\ell m}(\mathbf{r},t) = \psi_{n\ell m}(\mathbf{r}) e^{-iE_n t/\hbar}$

Probability density:

$P(\mathbf{r},t) = |\Psi(\mathbf{r},t)|^2$

Wavefunction superposition:

$\Psi(\mathbf{r},t)
= \frac{1}{\sqrt{2}}
\left(
\psi_{3d}(\mathbf{r}) e^{-iE_3 t/\hbar}
+
\psi_{4p}(\mathbf{r}) e^{-iE_4 t/\hbar}
\right)$

Radial approximations:

$R_{3d}(r) \propto r^2 e^{-r/(3a_0)}$

$R_{4p}(r) \propto r e^{-r/(4a_0)}$

Angular parts:

$d_{z^2}: \quad 3\cos^2\theta - 1$

$p_z: \quad \cos\theta$

Monte Carlo sampling:

$ \text{accept if } P(\mathbf{r},t) / P_{\max} > \text{rand}(0,1)$
Mathematical Background

### Time-Dependent Schrödinger Equation

```math
i\hbar \frac{\partial \Psi(\mathbf{r},t)}{\partial t}
=
\hat{H}\Psi(\mathbf{r},t)
```

```math
\hat{H}
=
-\frac{\hbar^2}{2m}\nabla^2
-
\frac{e^2}{4\pi\varepsilon_0 r}
```

---

### Separation of Variables

```math
\Psi_{n\ell m}(\mathbf{r},t)
=
\psi_{n\ell m}(\mathbf{r})
\, e^{-iE_n t / \hbar}
```

```math
\psi_{n\ell m}(\mathbf{r})
=
R_{n\ell}(r)\,Y_{\ell m}(\theta,\phi)
```

---

### Energy Levels of Hydrogen

```math
E_n
=
-\frac{13.6\ \text{eV}}{n^2}
```

```math
E_3 = -\frac{13.6}{3^2}\,\text{eV},
\quad
E_4 = -\frac{13.6}{4^2}\,\text{eV}
```

---

### Probability Density

```math
P(\mathbf{r},t)
=
|\Psi(\mathbf{r},t)|^2
=
\Psi^*(\mathbf{r},t)\Psi(\mathbf{r},t)
```

---

### 1s Orbital

```math
P_{1s}(r)
=
\frac{1}{\pi a_0^3}
e^{-2r/a_0}
```

---

### 3d Orbitals – Angular Parts

#### d_{z^2}

```math
Y_{2,0}(\theta,\phi)
=
\sqrt{\frac{5}{16\pi}}
\left(3\cos^2\theta - 1\right)
```

#### d_{x^2-y^2}

```math
Y(\theta,\phi)
=
\sqrt{\frac{15}{16\pi}}
\sin^2\theta \cos(2\phi)
```

#### d_{xy}

```math
Y(\theta,\phi)
=
\sqrt{\frac{15}{16\pi}}
\sin^2\theta \sin(2\phi)
```

#### d_{xz}

```math
Y(\theta,\phi)
=
\sqrt{\frac{15}{4\pi}}
\sin\theta \cos\theta \cos\phi
```

#### d_{yz}

```math
Y(\theta,\phi)
=
\sqrt{\frac{15}{4\pi}}
\sin\theta \cos\theta \sin\phi
```

---

### Radial Part (3d Orbital – Approximation)

```math
R_{3d}(r)
\propto
r^2 e^{-r/(3a_0)}
```

---

### 4p Orbital (z-direction)

```math
R_{4p}(r)
\propto
r e^{-r/(4a_0)}
```

```math
Y_{1,0}(\theta,\phi)
=
\cos\theta
```

---

### Quantum Superposition

```math
\Psi(\mathbf{r},t)
=
c_1 \psi_{3d}(\mathbf{r}) e^{-iE_3 t/\hbar}
+
c_2 \psi_{4p}(\mathbf{r}) e^{-iE_4 t/\hbar}
```

```math
c_1 = c_2 = \frac{1}{\sqrt{2}}
```

---

### Resulting Probability Density

```math
P(\mathbf{r},t)
=
\left|
c_1 \psi_{3d} e^{-iE_3 t/\hbar}
+
c_2 \psi_{4p} e^{-iE_4 t/\hbar}
\right|^2
```

---

### Monte Carlo Sampling

```math
\text{accept if } \quad
\frac{P(\mathbf{r},t)}{P_{\max}} > \text{rand}(0,1)
```

---

### Notes

- Equations are **qualitative and approximately normalized**
- Real spherical harmonics are used
