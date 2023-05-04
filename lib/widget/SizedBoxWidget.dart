import 'package:flutter/material.dart';

class SizeBoxWidget extends StatelessWidget {
  const SizeBoxWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedBoxWidget'),
      ),
      body: Column(
        children: [
          Row(
            children: const [
              Text(
                'data01',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                width: 20,
              ),
              Text(
                'data02',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('ປຸ່ມ01'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('ປຸ່ມ02'),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 300,
            child: Container(
              color: Colors.amber,
              child: Text('data03', style: TextStyle(fontSize: 18)),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: SizedBox(
              width: double.infinity,
              height: 400,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('ປຸ່ມ03'),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('ປຸ່ມ04 ປຸ່ມ04 ປຸ່ມ04'),
          ),
        ],
      ),
    );
  }
}
