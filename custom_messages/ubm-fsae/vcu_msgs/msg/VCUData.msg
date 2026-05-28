std_msgs/Header header

# VCUDataType
uint8 MISSION_T = 0
uint8 ASS_T = 1
uint8 VCU_SENSORS_T = 2

# Mission
uint8 MANUAL_DRIVING = 0
uint8 ACCELERATION = 1
uint8 SKIDPAD = 2
uint8 AUTOCROSS = 3
uint8 TRACKDRIVE = 4
uint8 EBS_TEST = 5
uint8 INSPECTION = 6

# ASS
uint8 AS_OFF = 0
uint8 AS_READY = 1
uint8 AS_DRIVING = 2
uint8 AS_EMERGENCY = 3
uint8 AS_FINISHED = 4

# Header
uint32 counter
uint8 vcu_data_type
uint8 mission
uint8 ass

# Sensors
uint8 asms_on
uint8 go_button_pressed

uint16 throttle_perc
uint16 paddle_perc
float32 steer_deg

float32 brake_pressure_front_bar
float32 brake_pressure_rear_bar

float32 pump_temp_in
float32 pump_temp_out

# IMU
float32 ax_g
float32 ay_g
float32 az_g
float32 roll_deg
float32 pitch_deg
float32 yaw_deg
float32 roll_rate_degps
float32 pitch_rate_degps
float32 yaw_rate_degps

# GPS
float32 speed_kmh
float64 longitude_deg
float64 latitude_deg
float32 heading_deg
uint8 hdop

# Powertrain
uint8 pack_fsm
float32 soc_perc
float32 torque_rl_nm
float32 torque_rr_nm
int32 speed_rl_rpm
int32 speed_rr_rpm
float32 lv_battery_v

# Miracle
float32 miracle_cpu_load_0_perc
float32 miracle_cpu_load_1_perc
int64 miracle_system_timestamp_s
uint64 miracle_system_timestamp_fraction_s_ticks
uint16 dv_communication_write_period_ms
uint16 dv_communication_read_period_ms

# Estimator
float32 miracle_estimated_vx_mps
float32 miracle_estimated_vy_mps
