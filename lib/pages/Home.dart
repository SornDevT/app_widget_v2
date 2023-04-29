import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ຂໍ້ຄວາມໜ້າແອ໊ບ'),
      ),
      body: const Text(
        'ຂໍ້ຄວາມ Text Widget',
        style: TextStyle(
            color: Colors.amber, fontSize: 40, fontWeight: FontWeight.bold),
      ),
    );
  }
}
