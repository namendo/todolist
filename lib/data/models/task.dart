import 'package:equatable/equatable.dart';
import 'package:todolist/utils/utils.dart';

class Task extends Equatable {
  final int? id;
  final String title;
  final String note;
  final TaskCategory category;
  final String time;
  final String date;
  final bool isCompleted;
  const Task({
    this.id,
    required this.title,
    required this.category,
    required this.time,
    required this.date,
    required this.note,
    required this.isCompleted,
  });


  @override
  List<Object> get props {
    return [
      title,
      note,
      //category,
      time,
      date,
      isCompleted,
    ];
  }

  Task copyWith({
    int? id,
    String? title,
    String? note,
    TaskCategory? category,
    String? time,
    String? date,
    bool? isCompleted,
  }) {
    return Task(
      id: id ?? this.id,
      title: title ?? this.title,
      note: note ?? this.note,
      category: category ?? this.category,
      time: time ?? this.time,
      date: date ?? this.date,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }
}