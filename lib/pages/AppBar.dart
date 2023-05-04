import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        elevation: 8,
        leading: Icon(Icons.school),
        iconTheme: IconThemeData(color: Colors.pink),
        title: Text('AppBar'),
        centerTitle: true,
        titleTextStyle: TextStyle(color: Colors.amber, fontSize: 30),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem<int>(
                  value: 1,
                  child: Row(
                    children: [
                      Icon(Icons.account_circle),
                      SizedBox(
                        width: 10,
                      ),
                      Text('ບັນຊີຂຶງຂ້ອຍ'),
                    ],
                  ),
                ),
                PopupMenuItem<int>(
                    value: 2,
                    child: Row(
                      children: [
                        Icon(Icons.notifications),
                        SizedBox(
                          width: 10,
                        ),
                        Text('ແຈ້ງເຕືອນ'),
                      ],
                    )),
                PopupMenuItem<int>(
                    value: 3,
                    child: Row(
                      children: [
                        Icon(Icons.favorite),
                        SizedBox(
                          width: 10,
                        ),
                        Text('ສີ່ງທີ່ມັກ'),
                      ],
                    )),
                PopupMenuItem<int>(
                    value: 4,
                    child: Row(
                      children: [
                        Icon(Icons.settings),
                        SizedBox(
                          width: 10,
                        ),
                        Text('ຕັ້ງຄ່າ'),
                      ],
                    )),
                PopupMenuItem<int>(
                    value: 5,
                    child: Row(
                      children: [
                        Icon(Icons.logout),
                        SizedBox(
                          width: 10,
                        ),
                        Text('ອອກຈາກລະບົບ'),
                      ],
                    )),
              ];
            },
            onSelected: (value) {
              print(value);
            },
          )
        ],
        toolbarHeight: 50,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
        ),
      ),
      body: Center(
        child: Text('AppBar'),
      ),
    );
  }
}
