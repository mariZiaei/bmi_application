import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bmi/constant/constant.dart';
import 'package:flutter_bmi/widgets/Shapes_left.dart';
import 'package:flutter_bmi/widgets/shapes_right.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final weightController = TextEditingController();
  final heaightController = TextEditingController();

  double resultBMI = 0;
  String resultText = '';

  double weightGood = 100;
  double weightBad = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(217, 219, 213, 215),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          '   توچنده؟  Bmi  ',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              Container(
                width: 130,
                child: TextField(
                  controller: heaightController,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'قد',
                    hintStyle:
                        TextStyle(color: greenBackground.withOpacity(0.7)),
                  ),
                ),
              ),
              Container(
                width: 130,
                child: TextField(
                  controller: weightController,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'وزن',
                    hintStyle:
                        TextStyle(color: greenBackground.withOpacity(0.7)),
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                final weight = double.parse(weightController.text);
                final height = double.parse(heaightController.text);
                setState(() {
                  resultBMI = weight / (height * height);
                  if (resultBMI > 25) {
                    weightBad = 270;
                    weightGood = 50;
                    resultText = 'شما اضافه وزن دارید';
                  } else if (resultBMI > 18.5 && resultBMI <= 25) {
                    weightBad = 50;
                    weightGood = 270;
                    resultText = "وزن شما نرمال است";
                  } else {
                    weightBad = 10;
                    weightGood = 10;
                    resultText = 'وزن شما کم است';
                  }
                });
              },
              child: Text(
                '!محاسبه کن',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              '${resultBMI.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              '$resultText',
              style: TextStyle(
                  fontSize: 38, fontWeight: FontWeight.bold, color: Colors.red),
            ),
            ShapesLeft(
              width: weightBad,
            ),
            SizedBox(
              height: 15,
            ),
            ShapesRight(
              width: weightGood,
            ),
            SizedBox(
              height: 15,
            ),
          ]),
        ),
      ),
    );
  }
}
