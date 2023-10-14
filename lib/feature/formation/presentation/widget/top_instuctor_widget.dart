import 'package:arsi/core/theme/app_color.dart';
import 'package:arsi/feature/formation/model/instructor_model.dart';
import 'package:flutter/material.dart';


class TopInstructorWidget extends StatelessWidget {
  const TopInstructorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 16, 24, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top Instructor",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              TextButton(
                onPressed: () {},
                child: const Text("See all"),
              )
            ],
          ),
        ),
        Row(
          children: instructors.map((instructor) {
            return Expanded(
              child: Column(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: AppColor.blackGrey,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(instructor.image),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    instructor.name,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    instructor.role,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
