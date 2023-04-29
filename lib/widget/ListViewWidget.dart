import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Widget'),
      ),
      body: ListView(
        children: [
          Container(
            height: 80,
            color: Colors.amber,
          ),
          Container(
            height: 180,
            color: Colors.blueAccent,
          ),
          Container(
            height: 120,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                Icon(
                  Icons.account_circle,
                  size: 80,
                ),
                Icon(
                  Icons.account_circle,
                  size: 80,
                ),
                Icon(
                  Icons.account_circle,
                  size: 80,
                ),
                Icon(
                  Icons.account_circle,
                  size: 80,
                ),
                Icon(
                  Icons.account_circle,
                  size: 80,
                ),
                Icon(
                  Icons.account_circle,
                  size: 80,
                ),
                Icon(
                  Icons.account_circle,
                  size: 80,
                ),
                Icon(
                  Icons.account_circle,
                  size: 80,
                ),
                Icon(
                  Icons.account_circle,
                  size: 80,
                ),
              ],
            ),
          ),
          Container(
            height: 480,
            color: Colors.cyanAccent,
          )
        ],
      ),
    );
  }
}
