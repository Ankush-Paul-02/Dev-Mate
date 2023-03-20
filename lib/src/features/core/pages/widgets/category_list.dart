import 'package:dev_mate/src/constants/constants.dart';
import 'package:dev_mate/src/features/core/pages/widgets/skills.dart';
import 'package:dev_mate/src/features/core/pages/widgets/title_row.dart';
import 'package:flutter/material.dart';
import 'developer_card.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25, bottom: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              //! Popular skills
              TittleRow(
                title1: "Popular Skills",
                title2: "",
              ),
              SizedBox(
                height: defaultPadding,
              ),
              //! Skills
              Skills(),
              SizedBox(
                height: defaultPadding,
              ),
              //! Developers
              TittleRow(
                title1: "Developers",
                title2: "See All",
              ),
              SizedBox(
                height: 25,
              ),
              DeveloperCard(),
              SizedBox(
                height: 25,
              ),
              DeveloperCard(),
            ],
          ),
        ),
      ],
    );
  }
}
