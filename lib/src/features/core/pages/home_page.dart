import 'package:dev_mate/src/features/core/pages/widgets/category_list.dart';
import 'package:dev_mate/src/features/core/pages/widgets/home_appbar.dart';
import 'package:dev_mate/src/features/core/pages/widgets/search_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
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
                    child: Container(
                      color: Colors.grey.withOpacity(0.1),
                    ),
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
