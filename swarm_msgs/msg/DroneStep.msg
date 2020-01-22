# Possible type of actions.
int8 GOTO=0
int8 TAKEOFF=1
int8 LAND=2



# List of ids to bind to list indexes
string[] id

# The time (seconds) that goto uses
float32 time

# The type of action
int8[] action

# Pose of the drone
geometry_msgs/Pose[] pose

# colors of the leds
std_msgs/ColorRGBA[] color

# id of the animation to use
uint8[] animation

# set the drone headlights on or off
bool[] headlight
