import 'package:flutter/material.dart';

class CounterFunctionScreen extends StatefulWidget {
  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterFunctionScreenState();
}

class _CounterFunctionScreenState extends State<CounterFunctionScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar( 
      title: const Text('Counter Functions'),
      leading: IconButton(icon: const Icon(Icons.refresh_rounded),
      onPressed: () {
        setState(() {
            clickCounter = 0;
          });
      },),
    ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
         CustomButton(icon: Icons.plus_one, 
         onPressed: () { clickCounter++; setState(() {});},),
         const SizedBox(height: 10,),
         CustomButton(icon: Icons.refresh_outlined,
         onPressed: () { clickCounter=0; setState(() {});},),
         const SizedBox(height: 10,),
         CustomButton(icon: Icons.exposure_minus_1_outlined, 
         onPressed: () { clickCounter--; setState(() {});},),
         const SizedBox(height: 10,),
        
        ],
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

class CustomButton extends StatelessWidget {
  final VoidCallback?  onPressed;

  final IconData icon;

  const CustomButton({
    super.key,
    required this.icon,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
     shape: const StadiumBorder(),
     enableFeedback: true,
     onPressed: onPressed,
    child: Icon(icon),
   );
  }
}