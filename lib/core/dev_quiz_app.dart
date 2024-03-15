import 'package:devquiz/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

class DevQuizApp extends StatelessWidget {
  const DevQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'DevQuiz',
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
