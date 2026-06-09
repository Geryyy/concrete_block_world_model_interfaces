# concrete_block_world_model_interfaces

ROS 2 messages and services for the *persistent* block world model — block state, planning scene, and the pull-based query / write API consumed by [concrete_block_world_model](../concrete_block_world_model/) (server), [concrete_block_motion_planning](../concrete_block_motion_planning/), and [concrete_block_behavior_tree](../concrete_block_behavior_tree/) (clients).

For the *transient* per-frame detection / registration API, see [concrete_block_perception_interfaces](../concrete_block_perception_interfaces/).

## Contents

| Kind | Name | Purpose |
|---|---|---|
| `msg` | `Block` | One concrete block: id, pose, pose-/task-status enums, confidence, last_seen |
| `msg` | `BlockArray` | Snapshot of all known blocks (published on `/cbp/block_world_model`) |
| `msg` | `PlanningScene` | Block array + static collision objects for the planner |
| `msg` | `PlanningSceneObject` | Single static / dynamic collision object |
| `srv` | `GetCoarseBlocks` | Pull all blocks (any pose_status) |
| `srv` | `GetPlanningScene` | Pull the current planning scene |
| `srv` | `RunPoseEstimation` | Trigger registration for a specific block id |
| `srv` | `UpsertBlock` | Insert or update a block externally (e.g. seed scripts, BT teach mode) |
| `srv` | `SetBlockTaskStatus` | BT updates task lifecycle (MOVE / PLACED / REMOVED) |
| `srv` | `SetPerceptionMode` | Switch the perception pipeline mode at runtime |

`Block` defines `POSE_UNKNOWN / COARSE / PRECISE` and `TASK_UNKNOWN / FREE / MOVE / PLACED / REMOVED` constants — use these instead of magic numbers.

## Build

```bash
colcon build --packages-select concrete_block_world_model_interfaces
```
