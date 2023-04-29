import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Widget ກ່ອງຂໍ້ມູນ'),
      ),
      body: Container(
        margin: EdgeInsets.all(50),
        padding: EdgeInsets.all(20),
        height: double.infinity,
        width: double.infinity,
        // color: Colors.blueAccent,
        decoration: BoxDecoration(
          border: Border.all(
            width: 5,
            color: Colors.amber,
          ),
          borderRadius: BorderRadius.circular(60),
          color: Colors.blueAccent,
          gradient: LinearGradient(
            colors: [
              Colors.red,
              Color.fromARGB(255, 89, 246, 54),
              Color.fromARGB(255, 242, 81, 81),
            ],
          ),
        ),
        child: const Text(
          'ກ່ອງຂໍ້ມູນ Conatiner',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
