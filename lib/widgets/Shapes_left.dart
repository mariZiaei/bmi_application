import 'package:flutter/material.dart';

class ShapesLeft extends StatelessWidget {
  final double width;
  const ShapesLeft({super.key, this.width = 0});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          'شاخص منفی',
          style: TextStyle(color: Colors.red, fontSize: 17),
        ),
        SizedBox(
          width: 8,
        ),
        Center(
          child: Container(
            height: 20,
            width: width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                color: Colors.red),
          ),
        ),
      ],
    );
  }
}
