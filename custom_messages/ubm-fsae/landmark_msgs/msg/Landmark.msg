# Landmark

# FSAE classes
uint8 BLUE_CONE = 0
uint8 LARGE_ORANGE_CONE = 1
uint8 ORANGE_CONE = 2
uint8 UNKNOWN_CONE = 3
uint8 YELLOW_CONE = 4

# RoboRacer classes
uint8 ROBORACER_CAR = 0

int32 id                # landmark id
int32 class_id          # class of the landmark
float64 x
float64 y
float64 z   
float64 distance        # landmark distance from the sensor
float32[] covariance    # covariance matrix
