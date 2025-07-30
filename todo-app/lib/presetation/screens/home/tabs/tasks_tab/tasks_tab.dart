import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/core/utils/colors_manager.dart';
import 'package:todo_app/core/providers/task_provider.dart';
import 'package:todo_app/presetation/screens/home/tabs/tasks_tab/widgets/task_item.dart';

class TasksTab extends StatelessWidget {
  const TasksTab({super.key});

  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context);

    return Consumer<TaskProvider>(
      builder: (context, taskProvider, child) {
        final todayTasks = taskProvider.getTasksByDate(taskProvider.selectedDate);

        return Column(
          children: [
            buildCalenderTimeLine(taskProvider),
            Expanded(
              child: ListView.builder(
                itemCount: todayTasks.length,
                itemBuilder: (context, index) {
                  return TaskItem(task: todayTasks[index]);
                },
              ),
            ),
          ],
        );
      },
    );
  }

  Widget buildCalenderTimeLine(TaskProvider taskProvider) => EasyDateTimeLine(
    initialDate: taskProvider.selectedDate,
    onDateChange: (selectedDate) {
      taskProvider.setSelectedDate(selectedDate);
    },
    headerProps: const EasyHeaderProps(
      monthStyle: TextStyle(color: Colors.red),
      showHeader: false,
      monthPickerType: MonthPickerType.switcher,
      dateFormatter: DateFormatter.fullDateDMY(),
    ),
    dayProps: const EasyDayProps(
      height: 80,
      width: 60,
      dayStructure: DayStructure.dayStrDayNum,
      activeDayStyle: DayStyle(
        dayStrStyle: TextStyle(
            color: ColorsManager.blue,
            fontSize: 15,
            fontWeight: FontWeight.w700),
        dayNumStyle: TextStyle(
            color: ColorsManager.blue,
            fontSize: 15,
            fontWeight: FontWeight.w700),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.white,
        ),
      ),
      inactiveDayStyle: DayStyle(
        dayStrStyle: TextStyle(
            color: ColorsManager.black,
            fontSize: 15,
            fontWeight: FontWeight.w700),
        dayNumStyle: TextStyle(
            color: ColorsManager.black,
            fontSize: 15,
            fontWeight: FontWeight.w700),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.white,
        ),
      ),
    ),
  );
}
