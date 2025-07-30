import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/my_app.dart';
import 'package:todo_app/core/providers/task_provider.dart';
import 'package:todo_app/core/providers/theme_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TaskProvider()),
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}