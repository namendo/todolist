import 'package:flutter/material.dart';
import 'package:todolist/utils/utils.dart';
import 'package:todolist/widgets/widgets.dart';
import 'package:todolist/data/data.dart';

class DisplayListOfTasks extends StatelessWidget {
  const DisplayListOfTasks({
    super.key,
    this.isCompletedTasks = false,
    required this.tasks,
  });
  final bool isCompletedTasks;
  final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    final height =
    isCompletedTasks ? deviceSize.height * 0.25 : deviceSize.height * 0.3;
    final emptyTasksAlert = isCompletedTasks
        ? 'There is no completed task yet'
        : 'There is no task to todo!';

    return CommonContainer(
      height: height,
      child: tasks.isEmpty
          ? Center(
        child: Text(
          emptyTasksAlert,
          style: context.textTheme.headlineSmall,
        ),)
          : ListView.separated(
        shrinkWrap: true,
        itemCount: tasks.length,
        padding: EdgeInsets.zero,
        itemBuilder: (ctx, index) {
          final task = tasks[index];
          return InkWell(
            onLongPress: () {

            },
            onTap:  () async {
              await showModalBottomSheet(context: context, builder: (ctx) {
                return TaskDetails(task: task);
              });
            },
            child: TaskTile(task: task),
          );
        },
        separatorBuilder: (context, index) => const Divider(
          thickness: 1.5,
        ),
      ),
    );
  }
}