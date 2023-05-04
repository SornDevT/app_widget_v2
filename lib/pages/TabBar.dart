import 'package:flutter/material.dart';

import 'TabPage/Tab01.dart';
import 'TabPage/Tab02.dart';
import 'TabPage/Tab03.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text('TabBar'),
              bottom: const TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.directions_bike),
                    text: "ລົດຖີບ",
                  ),
                  Tab(
                    icon: Icon(Icons.directions_boat),
                    text: "ເຮືອ",
                  ),
                  Tab(
                    icon: Icon(Icons.directions_car),
                    text: "ລົດ",
                  ),
                ],
              ),
            ),
            body: const TabBarView(
              children: [
                Tab01Page(),
                Tab02Page(),
                Tab03Page(),
                // Icon(
                //   Icons.directions_bike,
                //   size: 80,
                // ),
                // Icon(
                //   Icons.directions_boat,
                //   size: 80,
                // ),
                // Icon(
                //   Icons.directions_car,
                //   size: 80,
                // ),
              ],
            )),
      ),
    );
  }
}
