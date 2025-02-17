import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:todolist/utils/utils.dart';
import 'package:todolist/widgets/widgets.dart';
import 'package:todolist/utils/extension.dart';
import 'package:todolist/config/config.dart';
import 'package:todolist/data/data.dart';

class MyHomeScreen extends StatefulWidget {
  static MyHomeScreen builder(
      BuildContext context,
      GoRouterState state,
      ) =>
      const MyHomeScreen();
  const MyHomeScreen({super.key,});
  //const MyHomeScreen({super.key, required this.title});
  //final String title;

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {

  @override
  Widget build(BuildContext context) {

    List<Task> inCompletedTasks = [
      Task(title: 'Terminer tuto flutter', category: TaskCategory.education, time: '11:26', date: 'Feb, 16', note: 'note3', isCompleted: false),
      Task(title: 'Terminer tuto laravel et vue js', category: TaskCategory.education, time: '18:26', date: 'Feb, 29', note: 'note4', isCompleted: false)
    ];
    List<Task> completedTasks = [
      Task(title: 'Faire du flutter', category: TaskCategory.education, time: '21:26', date: 'Feb, 15', note: 'note1', isCompleted: true),
      Task(title: 'Faire du laravel', category: TaskCategory.education, time: '15:26', date: 'Feb, 15', note: 'note2', isCompleted: true)
    ];


    var deviceSize = context.deviceSize;
    var color = context.colorScheme;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: color.primary,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DisplayWhiteText(
                      text: "Aujourd'hui le 13 février",
                      fontWeight: FontWeight.normal,
                      size: 10,
                    ),
                    DisplayWhiteText(
                      text: "Todo List",
                      fontWeight: FontWeight.normal,
                      size: 40,
                    )
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 130,
            left: 0,
            right: 0,
            child: SafeArea(
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    DisplayListOfTasks(
                      tasks: inCompletedTasks,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      'Completed',
                      style: context.textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    DisplayListOfTasks(
                      isCompletedTasks: true,
                      tasks: completedTasks,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () => context.push(RouteLocation.createTask),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: DisplayWhiteText(
                          text: 'Add New Task',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}