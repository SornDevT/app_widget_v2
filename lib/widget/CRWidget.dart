import 'package:flutter/material.dart';

class ColumRowWidget extends StatelessWidget {
  const ColumRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Colum Row Widget'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          FlutterLogo(
            size: 180,
          ),
          Text('text 01'),
          Text('text 02'),
          Text('text 03'),
          Text('text 04'),
        ],
      ),
      // Column(
      //   children: [
      //     Row(
      //       textBaseline: TextBaseline.alphabetic,
      //       textDirection: TextDirection.ltr,
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       crossAxisAlignment: CrossAxisAlignment.end,
      //       children: const [
      //         FlutterLogo(
      //           size: 80,
      //         ),
      //         Text('row text 01'),
      //         Text('row text 02'),
      //       ],
      //     ),
      //   ],
      // ),
    );
  }
}
