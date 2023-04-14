import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        
        child: Column(children: [
          Text(
            'Result: $result',
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: firstController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(), hintText: 'Enter First Number'),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: secondController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'Enter Second Number'),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                
                height: 100,
              ),
              ElevatedButton(
                onPressed: () {
                  double a = double.parse(firstController.text);
                  double b = double.parse(secondController.text);
                  
                  setState(() {
                    result = a + b;
                  });
                }, 
                child: const Text('Add'),
            ),
            const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  double a = double.parse(firstController.text);
                  double b = double.parse(secondController.text);
                  
                  setState(() {
                    result = a - b;
                  });
                }, 
                child: const Text('Subtract'),
            ),
            const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  double a = double.parse(firstController.text);
                  double b = double.parse(secondController.text);
                  
                  setState(() {
                    result = a * b;
                  });
                }, 
                child: const Text('Multiply'),
            ),
            const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  double a = double.parse(firstController.text);
                  double b = double.parse(secondController.text);
                  
                  setState(() {
                    result = a / b;
                  });
                }, 
                child: const Text('Devide'),
            ),
            const SizedBox(
              height: 10,
            ),
        ]),
      ),
    );
  }
} //inihomepage
