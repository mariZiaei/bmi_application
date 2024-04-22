import 'package:flutter/material.dart';

import 'package:flutter_bmi/screen/Home_screen.dart';

void main() {
  runApp(Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Homescreen());
  }
}
