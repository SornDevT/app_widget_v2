import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView Widget'),
      ),
      body:
          //  GridView.count(
          //   crossAxisCount: 3,
          //   children: [
          //     Container(
          //       color: Colors.amber,
          //       margin: EdgeInsets.all(10),
          //     ),
          //     Container(
          //       color: Colors.amber,
          //       margin: EdgeInsets.all(10),
          //     ),
          //     Container(
          //       color: Colors.amber,
          //       margin: EdgeInsets.all(10),
          //     ),
          //     Container(
          //       color: Colors.amber,
          //       margin: EdgeInsets.all(10),
          //     ),
          //     Container(
          //       color: Colors.amber,
          //       margin: EdgeInsets.all(10),
          //     ),
          //     Container(
          //       color: Colors.amber,
          //       margin: EdgeInsets.all(10),
          //     ),
          //     Container(
          //       color: Colors.amber,
          //       margin: EdgeInsets.all(10),
          //     ),
          //     Container(
          //       color: Colors.amber,
          //       margin: EdgeInsets.all(10),
          //     ),
          //     Container(
          //       color: Colors.amber,
          //       margin: EdgeInsets.all(10),
          //     ),
          //   ],
          // ),
          GridView.count(
        crossAxisCount: 3,
        children: _builGrid(30),
      ),
    );
  }

  List<Container> _builGrid(int count) {
    return List.generate(
        count,
        (index) => Container(
              margin: EdgeInsets.all(10),
              color: Colors.blueAccent,
            ));
  }
}
