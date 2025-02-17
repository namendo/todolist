import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todolist/screens/home_screen.dart';
import 'package:todolist/config/config.dart';

class TodoApp extends ConsumerWidget  {
  const TodoApp({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routerConfigs = ref.watch(routesProvider);
    return MaterialApp.router(
      theme: AppTheme.light,
      routerConfig: routerConfigs,
    );
    return MaterialApp(
      theme: AppTheme.light,
      //home: const MyHomeScreen(title: 'Flutter Demo Home Page'),
      home: const MyHomeScreen(),
    );
  }
}