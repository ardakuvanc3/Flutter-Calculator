import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();
  double _result = 0;

  void _add() {
    setState(() {
      _result = double.parse(_controller1.text) + double.parse(_controller2.text);
    });
  }

  void _subtract() {
    setState(() {
      _result = double.parse(_controller1.text) - double.parse(_controller2.text);
    });
  }

  void _multiply() {
    setState(() {
      _result = double.parse(_controller1.text) * double.parse(_controller2.text);
    });
  }

  void _divide() {
    setState(() {
      _result = double.parse(_controller1.text) / double.parse(_controller2.text);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hesap Makinesi'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller1,
              decoration: const InputDecoration(
                hintText: 'Number 1',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _controller2,
              decoration: const InputDecoration(
                hintText: 'Number 2',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: _add, child: const Text('+')),
                ElevatedButton(onPressed: _subtract, child: const Text('-')),
                ElevatedButton(onPressed: _multiply, child: const Text('*')),
                ElevatedButton(onPressed: _divide, child: const Text('/')),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              'Result: $_result',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
