import 'package:dev_mate/src/constants/constants.dart';
import 'package:dev_mate/src/features/core/pages/widgets/category_list.dart';
import 'package:dev_mate/src/features/core/pages/widgets/home_app_bar.dart';
import 'package:dev_mate/src/features/core/pages/widgets/search_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor1,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Stack(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  HomeAppBar(),
                  SearchCard(),
                  CategoryList(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
