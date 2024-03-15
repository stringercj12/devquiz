import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LevelButtonWidget extends StatelessWidget {
  final String label;
  LevelButtonWidget({required this.label, super.key})
      : assert(["Fácil", "Médio", "Difícil", "Perito"].contains(label));

  final config = {
    "Fácil": {
      "color": AppColors.levelButtonEasy,
      "borderColor": AppColors.levelButtonBorderEasy,
      "fontColor": AppColors.levelButtonEasy
    },
    "Médio": {
      "color": AppColors.levelButtonMiddle,
      "borderColor": AppColors.levelButtonBorderMiddle,
      "fontColor": AppColors.levelButtonMiddle
    },
    "Difícil": {
      "color": AppColors.levelButtonHard,
      "borderColor": AppColors.levelButtonBorderHard,
      "fontColor": AppColors.levelButtonHard
    },
    "Perito": {
      "color": AppColors.levelButtonExpert,
      "borderColor": AppColors.levelButtonBorderExpert,
      "fontColor": AppColors.levelButtonExpert
    }
  };

  Color get color => config[label]!['color']!;
  Color get borderColor => config[label]!['borderColor']!;
  Color get fontColor => config[label]!['fontColor']!;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        color: color,
        border: Border.fromBorderSide(
          BorderSide(
            color: borderColor,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 6),
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            color: fontColor,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
