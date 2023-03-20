import 'package:dev_mate/src/constants/constants.dart';
import 'package:dev_mate/src/features/core/pages/widgets/alert_dialog.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor1,
        appBar: AppBar(
          backgroundColor: backgroundColor1,
          elevation: 0,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: textColor,
              )),
          title: Text(
            "Profile Section",
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: textColor,
                ),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Container(
              alignment: Alignment.center,
              height: 250,
              width: double.infinity,
              child: Stack(
                clipBehavior: Clip.none,
                children: const [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1667772538186-144083f87515?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDN8fHNvZnR3YXJlJTIwZGV2ZWxvcGVyJTIwZmFjZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=400&q=60'),
                    radius: 100,
                  ),
                  DialogAlert(
                    title: "Profile Picture Capture",
                    description: "This Feature will coming soon!",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
