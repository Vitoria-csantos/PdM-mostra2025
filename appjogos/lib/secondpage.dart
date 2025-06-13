import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Segunda Tela')),
      body: const Center(
        child: Text(
          'Você está na segunda tela!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
