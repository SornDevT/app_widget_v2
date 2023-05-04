import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpandedWidget'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                color: Colors.amber,
              ),
              Expanded(
                child: Text('Expanded Widget'),
              ),
              Container(
                width: 60,
                height: 60,
                color: Colors.blueAccent,
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  width: 60,
                  height: 60,
                  color: Colors.deepOrange,
                  child: Text('data 01'),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  width: 60,
                  height: 60,
                  color: Colors.greenAccent,
                  child: Text('data 01'),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  width: 60,
                  height: 60,
                  color: Colors.yellowAccent,
                  child: Text('data 01'),
                ),
              ),
            ],
          ),
          Row(
            children: const [
              Expanded(
                child: Text(
                  'ສະແດງຂໍ້ມູນ... ຂໍ້ຄວາມ',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Icon(
                Icons.account_circle,
                size: 80,
              ),
            ],
          )
        ],
      ),
    );
  }
}
