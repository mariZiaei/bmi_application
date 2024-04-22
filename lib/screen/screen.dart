import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
            child: Center(
          child: Column(
            children: [
              Text(
                '$counter',
                style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    counter = counter + 1;
                  });
                },
                child: Padding(
                  padding: EdgeInsets.all(80),
                  child: Container(
                    width: 200,
                    height: 200,
                    child: Text(' click me'),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    counter = counter + 1;
                  });
                },
                child: Text('tuch Me'),
              )
            ],
          ),
        )),
      ),
    );
  }
}
