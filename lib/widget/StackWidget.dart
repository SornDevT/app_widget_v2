import 'package:flutter/material.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StackWidget'),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.network(
              "https://st.depositphotos.com/1377214/2151/i/950/depositphotos_21514941-stock-photo-smiling-student-girl-with-books.jpg"),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 105,
              height: 80,
              color: Colors.amber,
            ),
          ),
          Positioned(
            top: 40,
            right: 5,
            child: Container(
              width: 60,
              height: 60,
              color: Colors.blue,
            ),
          ),
          Positioned(
            top: 30,
            right: 10,
            child: Text(
              "ສະບາຍດີ",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
