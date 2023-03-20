import 'package:flutter/material.dart';
import '../../../../constants/constants.dart';

class SkillCard extends StatelessWidget {
  const SkillCard({
    super.key,
    required this.image,
    required this.skill,
  });

  final String image, skill;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: defaultPadding * 1.5),
      child: Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
          color: backgroundColor3,
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: textColor2,
              blurRadius: 5,
              spreadRadius: 1,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
              height: 50,
            ),
            Text(
              skill,
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ],
        ),
      ),
    );
  }
}
