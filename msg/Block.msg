# Pose estimation status
int32 POSE_UNKNOWN = 0
int32 POSE_COARSE  = 1
int32 POSE_PRECISE = 2

# Task / semantic status
int32 TASK_UNKNOWN = 0
int32 TASK_FREE    = 1
int32 TASK_MOVE    = 2
int32 TASK_PLACED  = 3
int32 TASK_REMOVED = 4

string id
int32 pose_status
int32 task_status
geometry_msgs/Pose pose
# Row-major 6x6 covariance over (x, y, z, rot_x, rot_y, rot_z), same
# convention as geometry_msgs/PoseWithCovariance. All zeros = not set.
float64[36] pose_covariance
float32 confidence
builtin_interfaces/Time last_seen
