import 'package:flutter/material.dart';

class WrapWidget extends StatelessWidget {
  const WrapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WrapWidget'),
      ),
      body: Column(
        children: [
          Wrap(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.blueAccent,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.cyanAccent,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.deepPurple,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.lightBlue,
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
              'datfdsfklsfklmsdklmfklsdmklmklmslkmfklmlskdmfklsmfklsmkfmsdklmfsklda'),
          Row(
            children: [
              Container(
                width: 300,
                color: Colors.amber,
                child: Text(
                    'datjkjsdkldjsfjiosajeiowfjewopfjpowjfkowjfoewpjkfowpkfopwekfwpokopwkepwofikweopfkwpoeirpwerwep[rwevdsfsfsfdsp]'),
              )
            ],
          )
        ],
      ),
    );
  }
}
