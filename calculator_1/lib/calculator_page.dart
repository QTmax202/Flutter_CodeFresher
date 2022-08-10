import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {

  double firstNumber = 0;
  double lastNumber = 0;
  double result = 0;

  final _firstController = TextEditingController();
  final _secondController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          const Text(
            'CALCULATOR_PAGE',
            style: TextStyle(
              fontSize: 30,
              color: Color(0xff0193fc),
            )
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: _firstController,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 24,
              ),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide:
                  const BorderSide(width: 3, color: Color(0xff33cbff)), //<-- SEE HERE
                  borderRadius: BorderRadius.circular(50.0),
                ),
                prefixIcon: const Icon(Icons.navigate_next_outlined),
                labelText: 'Số thứ nhất',
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: _secondController,
              textAlign: TextAlign.left,
              style: const TextStyle(
                color: Colors.blue,
                fontSize: 24,
              ),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide:
                  const BorderSide(width: 3, color: Color(0xff33cbff)), //<-- SEE HERE
                  borderRadius: BorderRadius.circular(50.0),
                ),
                prefixIcon: const Icon(Icons.navigate_next_outlined),
                labelText: 'Số thứ hai',
              ),
            ),
          ),
          const SizedBox(height: 50),
          Text('Kết quả: $result',
            style: const TextStyle(
              color: Colors.cyanAccent,
              fontSize: 24,
            )
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(color: Colors.red),
                    ),
                  ),
                ),
                onPressed: () {
                  result = double.parse(_firstController.text) + double.parse(_secondController.text);
                  setState(() {});
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: Text(
                    '+',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(color: Colors.red),
                    ),
                  ),
                ),
                onPressed: () {
                  result = double.parse(_firstController.text) - double.parse(_secondController.text);
                  setState(() {});
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: Text(
                    '-',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(color: Colors.red),
                    ),
                  ),
                ),
                onPressed: () {
                  result = double.parse(_firstController.text) * double.parse(_secondController.text);
                  setState(() {});
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: Text(
                    '*',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      side: const BorderSide(color: Colors.red),
                    ),
                  ),
                ),
                onPressed: () {
                  result = double.parse(_firstController.text) / double.parse(_secondController.text);
                  setState(() {});
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 60),
                  child: Text(
                    '/',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ]
          )
        ],
      ),
    );
  }
}
