import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  double _value = 0.0;
  List pattern =[];

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Colors.black,
          title: Text(
            "Patern",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Slider(
                value: _value,
                onChanged: (value) {
                  setState(() {
                    _value = value;
                    pattern = [];
                    for (int i = 1; i <= _value.toInt(); i++) {
                      List p = [];
                      for (int j = 1; j <= i; j++) {
                        p.add(j);
                      }
                      pattern.add(p);
                    }
                    // print("=====$pattern");
                  });
                },
                activeColor: Colors.white,
                divisions: 10,
                inactiveColor: Colors.white38,
                min: 0.0,
                max: 10.0,
              ),
            ),
            SizedBox(
              height: 300,
              child: Padding(
                padding: EdgeInsets.only(left: 180),
                child: Center(
                  child: ListView.builder(
                    itemCount: pattern.length,
                    itemBuilder: (context, index) {
                      return Text(
                        "${pattern[index]}",
                        style: TextStyle(color: Colors.white),
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}