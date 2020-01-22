# Possible levels of operations.
int8 OK=0
int8 WARN=1
int8 ERROR=2
int8 STALE=3

# Level of operation enumerated above.
int8 level

# Whether the drone is ready to takeoff or not.
bool ready

# A description of the test/component reporting.
string name

# Voltage of the battery.
float32 voltage

# Relative signal strength indicator value.
uint8 rssi

# Kalman filters confidence value.
float32 confidence

# Estimated bose by the kalman filter
geometry_msgs/Pose est_pose

# Lighthouse delta in cm (?)
float32 lighthouse_delta

# From the firmware level canfly variable.
bool can_fly
