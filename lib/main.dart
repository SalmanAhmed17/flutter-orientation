import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SalmanAhmed(),
    );
  }
}

class SalmanAhmed extends StatelessWidget {
  const SalmanAhmed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Salman Ahmed Joynal"),
        centerTitle: true,
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          if (orientation == Orientation.landscape) {
            return const Center(child: Text("Lanscape"));
          } else if (orientation == Orientation.portrait) {
            return const Center(child: Text("Potrait"));
          } else {
            return const Center(child: Text("Error"));
          }
        },
      ),
    );
  }
}
