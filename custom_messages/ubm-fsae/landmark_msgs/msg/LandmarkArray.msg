# Array of landmarks (used by yolo and lidar pipelines, and slam)

std_msgs/Header header

int64 iteration_id          # id of the current iteration
int64 frame_id              # id of the current frame (e.g. image frame or lidar scan)
int32 landmark_array_size   # number of landmarks

bool is_loop_closed         # filled in by slam node to tell the path planner that loop closure did happen
uint8 cones_count_actual    # number of cones used by slam system in the current iteration
uint16 cones_count_all      # total number of cones used by the slam system

Landmark[] landmarks        # array of landmarks
