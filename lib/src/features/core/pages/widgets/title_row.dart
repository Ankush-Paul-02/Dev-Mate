import 'package:flutter/material.dart';

class TittleRow extends StatefulWidget {
  const TittleRow({
    super.key,
    required this.title1,
    required this.title2,

  });

  final String title1;
  final String title2;


  @override
  State<TittleRow> createState() => _TittleRowState();
}

class _TittleRowState extends State<TittleRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.title1,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            widget.title2,
            style: const TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
