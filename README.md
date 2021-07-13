# 🎀 Non-Linear Differential Equation - Holling Type II Model 🎀


## Results Achieved From The Study

- Below is the picture of solution `plot(u,w)` using Runge Kutta Fourth Order to find results of a system of Non-Linear ODE

Note that in the code `runge-kutta-fourth-order.m` I have used `d = 0.07, f = 1.7` whereas in the original paper, the values are taken as `d = 0.7 f = 1.2`

![rk4](https://user-images.githubusercontent.com/39788520/125199321-50da2980-e283-11eb-8989-28985835a372.jpg)


- Below is the picture of equilibrium points present in the system of Non-Linear ODE using in-built MATALB functions `solve` and `vpasolve`

![equilib2](https://user-images.githubusercontent.com/39788520/125199338-6a7b7100-e283-11eb-8d25-877c5e6a51ca.jpg)
![equilib1](https://user-images.githubusercontent.com/39788520/125199340-6b140780-e283-11eb-9f54-41f9b2853745.jpg)

to know more about the difference between `solve` and `vpasolve` check [here](https://in.mathworks.com/help/symbolic/select-numeric-or-symbolic-solver.html)


- Below is the picture of Jacobian matrix and the Eigen values derived from the Jacobian of the given system of Non-Linear ODE. Note that there are no decimal value associated with any of the term in the 2x2 matrix. That is because of the `jacobian ([eq1, eq2,...,eq3], [x,y,z,...p,q,r])` which doesn't use any decimal value, rather fractional terms are used. 

![jac](https://user-images.githubusercontent.com/39788520/125305397-f0fb8580-e34b-11eb-82cf-ef08bc82859b.jpg)

To run a single code containing these operations:

1) Finding Equilibrium points of the system
2) Calculating Jacobian Matrix
3) Evaluating Eigen Values

Then check out `combined.m` file provided above.

## Definitions To Ponder 🤔

- Why do we need to find Jacobian for a system of Non-Linear ODE?

The system's _small signal stability_ is investigated using the Jacobian matrix. By solving the equation f(Xo,Uo) = 0, the equilibrium point Xo is determined. The components of this Jacobian matrix will be utilised to accomplish the sensitivity result, and it is obtained from the state matrix.

Here, _Small Signal Stability_ is a term used to describe the stability of small signals. When a system is subjected to tiny perturbations or a small disturbance of state of equilibrium, such as gradual changes in system load, small signal stability refers to the system's capacity to sustain stable voltages.

Find more of Jacobian Matrix [here](https://www.sciencedirect.com/topics/engineering/jacobian-matrix).

- What is the physical significance of eigenvalues ?

The *eigenvalues* indicate the value of a system property in a stationary state, i.e. the system may attain that state given specific conditions, and the eigenvalues represent the value of that property in that stationary state.

The Eigen Values we get is greatly useful to determine the stability, see [here](https://www.intmath.com/matrices-determinants/eigenvalues-eigenvectors-concept-applet.php) how the chanage of Eigen Value can change the entire stability of the map of Australia.

- How to determine stability of a system of Non-Linear ODE usign Eigenvalues ?

Briefly I will just talk about the results from our system. So the eigen values obtained from the first equilibrium point we got one positive and one negative which means the system at that equilibrium point is unstable. For the second set of eigen values obtained from second equilibrium point we again got results similar to the first value, i.e. one negative and one positive, so again not stable. Third one, we see that the real part of the eigen values are both negative, so we can say it depicts stability.
More detailed explanations can be found [here](https://eng.libretexts.org/Bookshelves/Industrial_and_Systems_Engineering/Book%3A_Chemical_Process_Dynamics_and_Controls_(Woolf)/10%3A_Dynamical_Systems_Analysis/10.04%3A_Using_eigenvalues_and_eigenvectors_to_find_stability_and_solve_ODEs), which they have explained it using graphs.
