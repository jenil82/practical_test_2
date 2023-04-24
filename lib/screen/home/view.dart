import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String _pattern = '5';
  double _sliderValue = 1;


  void _generatePattern(double value) {
    String pattern = '';
    for (int i = 1; i <= value; i++) {
      pattern += '${List.generate(i, (j) => j + 1).join()} \n';
    }
    setState(() {
      _pattern = pattern;
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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Slider(
                value: _sliderValue,
                min: 1,
                max: 20,
                divisions: 9,
                label: _sliderValue.round().toString(),
                onChanged: (value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
                onChangeEnd: _generatePattern,
              ),
              Text(
                _pattern,
                style: const TextStyle(fontSize: 20,color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ));
  }
}