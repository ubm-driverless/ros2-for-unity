# This message represents a single cone, with relative position and color.
# - id: identifier of the cone
# - x [m]: x-coordinate of the cone
# - y [m]: y-coordinate of the cone 
# - color: color of the cone (0=UNDEFINED, 1=YELLOW=RIGHT, 2=BLUE=LEFT, 3=ORANGE_SMALL, 4=ORANGE_BIG)
# - distance [m]: relative distance from the vehicle

int16 id
float64 x
float64 y
int16 color
float64 distance