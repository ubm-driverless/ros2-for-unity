# Generic PID Controller Output
# Generic logging message for any PID controller (steering, torque, etc.)
# Contains setpoint, current value, error, and PID terms for real-time plotting

std_msgs/Header header

# Reference values
float32 setpoint                    # Reference setpoint value

# Error
float32 error                       # Control error

# PID Controller terms
float32 term_p                      # Proportional term output
float32 term_i                      # Integral term output
float32 term_d                      # Derivative term output

# Controller output
float32 output                      # Final control output (possibly after clamping)