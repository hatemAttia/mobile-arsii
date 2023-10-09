import 'package:arsi/core/theme/app_color.dart';
import 'package:arsi/feature/couse_detail/presentation/widget/header_widget.dart';
import 'package:arsi/feature/formation/presentation/widget/popular_course_widget.dart';
import 'package:arsi/feature/formation/presentation/widget/previos_learning_widget.dart';
import 'package:arsi/feature/formation/presentation/widget/top_instuctor_widget.dart';
import 'package:flutter/material.dart';


class FormationScrenn extends StatelessWidget {
  const FormationScrenn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundWhite,
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          bottom: MediaQuery.of(context).padding.bottom,
        ),
        child: Column(
          children: [
            const HeaderWidget(),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(16),
                ),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PreviosLearningWidget(),
                  TopInstructorWidget(),
                  PopularCourseWidget(),
                  SizedBox(height: 400),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
