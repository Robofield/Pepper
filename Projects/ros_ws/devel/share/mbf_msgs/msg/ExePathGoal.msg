# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Follow the given path until completion or failure

nav_msgs/Path path

# Controller to use; defaults to the first one specified on "controllers" parameter
string controller

# use different slots for concurrency
uint8 concurrency_slot

# define goal tolerance for the action
bool tolerance_from_action
float32 dist_tolerance
float32 angle_tolerance
