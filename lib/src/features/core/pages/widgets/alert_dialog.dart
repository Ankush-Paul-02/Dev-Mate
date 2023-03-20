import 'package:flutter/material.dart';
import '../../../../constants/constants.dart';

class DialogAlert extends StatelessWidget {
  const DialogAlert({
    super.key,
    required this.title,
    required this.description,
  });

  final String title, description;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: -5,
      child: RawMaterialButton(
        onPressed: () => showDialog(
          context: context,
          builder: (context) => AlertDialog(
            backgroundColor: backgroundColor2,
            title: Text(
              title,
              style: const TextStyle(color: textColor),
            ),
            content: Text(
              description,
              style: const TextStyle(color: textColor),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context, 'Cancel');
                },
                child: const Text(
                  'Cancel',
                  style: TextStyle(color: textColor),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context, 'Ok');
                },
                child: const Text(
                  'Ok',
                  style: TextStyle(color: textColor),
                ),
              ),
            ],
          ),
        ),
        elevation: 2.0,
        fillColor: textColor,
        padding: const EdgeInsets.all(5),
        shape: const CircleBorder(),
        child: const Icon(
          Icons.camera,
          color: Colors.deepPurple,
        ),
      ),
    );
  }
}
