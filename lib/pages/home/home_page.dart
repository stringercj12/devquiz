import 'package:devquiz/pages/home/widgets/app_bar/app_bar_widget.dart';
import 'package:devquiz/pages/home/widgets/level_button/level_button_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            LevelButtonWidget(
              label: "Fácil",
            ),
            LevelButtonWidget(
              label: "Médio",
            ),
            LevelButtonWidget(
              label: "Difícil",
            ),
            LevelButtonWidget(
              label: "Perito",
            ),
          ],
        ),
      ),
    );
  }
}
