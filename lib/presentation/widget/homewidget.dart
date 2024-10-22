import 'package:flutter/material.dart';

class Homewidget extends StatelessWidget {
  const Homewidget(
      {super.key,
      required this.image,
      required this.title,
      required this.time});
  final String image, title, time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          image,
          height: 50,
          width: 50,
        ),
        SizedBox(
          width: 8,
        ),
        Column(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              time,
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ],
        )
      ],
    );
  }
}
