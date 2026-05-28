# This message represents the raceline that the car should follow. It contains the following lists:
# - length [m]: curvi-linear distance along the raceline
# - x [m]: x-coordinate of the raceline point
# - y [m]: y-coordinate of the raceline point
# - width_right [m]: width of the raceline to the right of the raceline point
# - width_left [m]: width of the raceline to the left of the raceline point
# - heading [rad]: heading of raceline in current point from -pi to +pi rad. Zero is north (along y-axis)
# - curvature [rad/m]: curvature of the raceline in current point
# - speed [m/s]: target speed in current point
# - sector [dimensionless]: sector of the raceline. This is used to divide the raceline into different sectors
# - color [dimensionless]: zone of the raceline
# - start_idx [dimensionless]: index of the first point of the raceline (used only for open and online trajectories that substitute the original raceline)
# - end_idx [dimensionless]: index of the last point of the raceline (used only for open and online trajectories that substitute the original raceline)

float32[] length
float32[] x
float32[] y
float32[] width_right
float32[] width_left
float32[] heading
float32[] curvature
float32[] speed
uint8[] sector
string[] zone

int16 start_idx
int16 end_idx
