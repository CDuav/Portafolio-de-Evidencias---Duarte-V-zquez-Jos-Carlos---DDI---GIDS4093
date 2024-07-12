import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            clickCounter++;
          });
        },
        child: const Icon(Icons.plus_one),
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$clickCounter', style: const TextStyle(fontSize: 120, fontWeight: FontWeight.w100),),
            Text('Clic${clickCounter == 1 ? '':'s' }', style: const TextStyle(fontSize: 25),),
          ],
        )
      )
    );
  }
}