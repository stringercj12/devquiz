import 'package:devquiz/core/app_colors.dart';
import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizCardWidget extends StatelessWidget {
  const QuizCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.white,
          border:
              const Border.fromBorderSide(BorderSide(color: AppColors.border)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              child: Image.asset(AppImages.blocks),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              "Gerenciamento de Estado",
              style: AppTextStyles.heading15,
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    "3 de 10",
                    style: AppTextStyles.body11,
                  ),
                ),
                const Expanded(
                  flex: 2,
                  child: LinearProgressIndicator(
                    backgroundColor: AppColors.chartSecondary,
                    valueColor: AlwaysStoppedAnimation<Color>(
                      AppColors.chartPrimary,
                    ),
                    value: 0.3,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
