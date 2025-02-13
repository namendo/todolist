import 'package:flutter/material.dart';
import 'package:todolist/widgets/widgets.dart';
import 'package:todolist/utils/extension.dart';
import 'package:todolist/data/data.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key, required this.title});
  final String title;

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {

  @override
  Widget build(BuildContext context) {

    List<Task> inCompletedTasks = [];
    List<Task> completedTasks = [];


    var deviceSize = context.deviceSize;
    var color = context.colorScheme;
    return Scaffold(
      body: Stack(
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
                      onPressed: () => null,
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