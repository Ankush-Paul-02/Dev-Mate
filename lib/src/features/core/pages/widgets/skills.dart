import 'package:dev_mate/src/features/core/pages/widgets/skill_card.dart';
import 'package:flutter/material.dart';
import '../../../../constants/constants.dart';

class Skills extends StatelessWidget {
  const Skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const ClampingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 25,
          top: defaultPadding,
          bottom: defaultPadding,
        ),
        child: Row(
          children: const [
            SkillCard(
              skill: "Flutter",
              image: 'assets/images/flutter.png',
            ),
            SkillCard(
              skill: "React native",
              image: 'assets/images/react.png',
            ),
            SkillCard(
              skill: "Kotlin",
              image: 'assets/images/kotlin.png',
            ),
            SkillCard(
              skill: "Java",
              image: 'assets/images/java.png',
            ),
            SkillCard(
              skill: "Python",
              image: 'assets/images/python.png',
            ),
            SkillCard(
              skill: "Java Script",
              image: 'assets/images/js.png',
            ),
          ],
        ),
      ),
    );
  }
}
