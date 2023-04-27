import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String pn = '0';
  double se = 10;


  void pattern(double value) {
    String pattern = '';
    for (int i = 1; i <= value; i++) {
      pattern += '${List.generate(i, (j) => j + 1).join()} \n';
    }
    setState(() {
      pn = pattern;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: const Text("Pattern"),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Slider(
                  value: se,
                  min: 10,
                  max: 20,
                  divisions: 10,
                  label: se.round().toString(),
                  onChanged: (value) {
                    setState(() {
                      se = value;
                    });
                  },
                  onChangeEnd: pattern,
                ),
                Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.white,width: 1),),
                  child: Text(
                    pn,
                    style: const TextStyle(fontSize: 20,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}