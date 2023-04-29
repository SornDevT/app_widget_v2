import 'package:flutter/material.dart';

class ListViewBuilderWidget extends StatelessWidget {
  ListViewBuilderWidget({super.key});

  // ປະກາດໂຕແປ
  final List<String> items =
      List<String>.generate(30, (index) => "Item ${++index}");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListViewBuilder'),
      ),
      body: Column(
        children: [
          Text(
            'ຈຳນວນ items: ${items.length}',
            style: TextStyle(fontSize: 18),
          ),
          Container(
            height: 500,
            width: double.infinity,
            child: ListView.builder(
              // scrollDirection: Axis.horizontal,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    // ListTile(
                    //   leading: Icon(Icons.directions),
                    //   title: Text("${items[index]}"),
                    // )
                    Container(
                      child: Text("${items[index]}"),
                      margin: EdgeInsets.all(5),
                      color: Colors.amber,
                      width: 50,
                      height: 80,
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
