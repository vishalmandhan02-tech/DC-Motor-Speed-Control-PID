# DC-Motor-Speed-Control-PID
DC motor speed control using MATLAB, Simulink and PID controller. Open-loop and closed-loop performance analysis.
# DC Motor Speed Control Using PID Controller

## Project Overview

This project focuses on modelling and simulating DC motor speed control using MATLAB and Simulink. A PID (Proportional–Integral–Derivative) controller is implemented to regulate motor speed and improve the system's dynamic response.

The project explores closed-loop speed control, step response analysis, and performance evaluation using MATLAB.

## Objectives

- Develop a mathematical model of a DC motor.
- Implement a PID-based speed control system in Simulink.
- Analyse motor speed response to a step input.
- Evaluate controller performance using MATLAB.
- Study rise time, settling time, overshoot and steady-state error.
- Explore the differences between open-loop and closed-loop control.

## Software and Tools

- MATLAB
- Simulink
- Control System Toolbox

## System Parameters

The simulated motor transfer function is:

PID controller parameters in the main Simulink model:

| Parameter | Value |
|---|---:|
| Proportional (Kp) | 0.1 |
| Integral (Ki) | 0.5 |
| Derivative (Kd) | 0.001 |

## Project Structure

```text
DC-Motor-PID-Control/
│
├── Simulation/
│   ├── DC_Motor_PID.slx
│   ├── DC_Motor_PID_closedloop.slx
│   └── DC_Motor_Comparison.slx
│
├── MATLAB/
│   ├── DC_Motor_PID_Analysis.m
│   └── DC_Motor_Comparison.m
│
├── Results/
│   └── DC_Motor_PID_Results.mat
│
├── Screenshots/
│   ├── PID respone 2.png
│   └── PID respone 1.png
│
└── README.md
```

## Simulation and Analysis

The Simulink model uses a step input, PID controller, motor transfer function and feedback loop to regulate motor speed.

MATLAB scripts are used to:
- Extract simulation data.
- Plot reference and actual motor speed.
- Calculate rise time and settling time.
- Calculate percentage overshoot.
- Determine steady-state error.
- Save simulation results.

## Performance Parameters

The following parameters are used to evaluate the controller:

1. Rise Time
2. Settling Time
3. Maximum Overshoot
4. Steady-State Error

## Simulation Results

The project currently includes simulated motor speed responses and PID performance analysis.

Further work includes:
- Open-loop versus closed-loop response comparison.
- PID gain tuning and optimization.
- Reduction of overshoot and settling time.
- Comparative performance evaluation.

## Future Improvements

- Implement automatic PID tuning.
- Compare P, PI and PID controllers.
- Investigate different motor operating conditions.
- Improve transient response through controller optimization.

## Author

Electrical Engineering Student

**Project:** DC Motor Speed Control Using PID Controller  
**Tools:** MATLAB and Simulink
