# fsae_msgs/msg/PathLimits.msg

std_msgs/Header header

bool new_path
bool new_close_midpoints

geometry_msgs/Point[] path
geometry_msgs/Point[] tracklimits_left
geometry_msgs/Point[] tracklimits_right
