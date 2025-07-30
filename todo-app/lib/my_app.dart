import 'package:flutter/material.dart';
//import 'package:todo_app/config/theme/app_thtme.dart';
import 'package:todo_app/core/utils/routes_manager.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/presetation/screens/home/home_screen.dart';
import 'core/providers/theme_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RoutesManager.router,
          initialRoute: RoutesManager.splashRoute,
          title: 'Todo App',
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: themeProvider.isDarkMode ? ThemeMode.dark : ThemeMode.light,
          home: const HomeScreen(),
        );
      },
    );
  }
}
