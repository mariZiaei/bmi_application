import 'package:flutter/material.dart';

class ShapesRight extends StatelessWidget {
  final double width;
  const ShapesRight({super.key, this.width = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 20,
          width: width,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 14, 105, 2),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
          ),
        ),
        SizedBox(width: 8),
        Text(
          'شاخص مثبت',
          style:
              TextStyle(color: Color.fromARGB(255, 14, 105, 2), fontSize: 17),
        ),
      ],
    );
  }
}
