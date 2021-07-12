# 🎀 Non-Linear Differential Equation 🎀


## Results Achieved From The Study

- Below is the picture of solution `plot(u,w)` using Runge Kutta Fourth Order to find results of a system of Non-Linear ODE

![rk4](https://user-images.githubusercontent.com/39788520/125199321-50da2980-e283-11eb-8989-28985835a372.jpg)


- Below is the picture of equilibrium points present in the system of Non-Linear ODE using in-built MATALB functions `solve` and `vpasolve`

![equilib2](https://user-images.githubusercontent.com/39788520/125199338-6a7b7100-e283-11eb-8d25-877c5e6a51ca.jpg)
![equilib1](https://user-images.githubusercontent.com/39788520/125199340-6b140780-e283-11eb-9f54-41f9b2853745.jpg)

to know more about the difference between `solve` and `vpasolve` check [here](https://in.mathworks.com/help/symbolic/select-numeric-or-symbolic-solver.html)


- Below is the picture of Jacobian matrix and the Eigen values derived from the Jacobian of the given system of Non-Linear ODE

![jac](https://user-images.githubusercontent.com/39788520/125305397-f0fb8580-e34b-11eb-82cf-ef08bc82859b.jpg)

## Definitions To Ponder 🤔

- Why do we need to find Jacobian for a system of Non-Linear ODE?

The system's _small signal stability_ is investigated using the Jacobian matrix. By solving the equation f(Xo,Uo) = 0, the equilibrium point Xo is determined. The components of this Jacobian matrix will be utilised to accomplish the sensitivity result, and it is obtained from the state matrix.

Here, _Small Signal Stability_ is a term used to describe the stability of small signals. When a system is subjected to tiny perturbations or a small disturbance of state of equilibrium, such as gradual changes in system load, small signal stability refers to the system's capacity to sustain stable voltages.

Find more of Jacobian Matrix [here](https://www.sciencedirect.com/topics/engineering/jacobian-matrix).

- What is the phycial significance of eigenvalues ?

The *eigenvalues* indicate the value of a system property in a stationary state, i.e. the system may attain that state given specific conditions, and the eigenvalues represent the value of that property in that stationary state.
