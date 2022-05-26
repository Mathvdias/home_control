import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class EasterEgg extends StatelessWidget {
  const EasterEgg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Em Breve..."),
      ),
      body: ListView(
        children: [
          Lottie.asset('assets/images/banana.json', frameRate: FrameRate(120)),
        ],
      ),
    );
  }
}
