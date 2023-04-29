import 'package:flutter/material.dart';

class imageWidget extends StatefulWidget {
  const imageWidget({super.key});

  @override
  State<imageWidget> createState() => _imageWidgetState();
}

class _imageWidgetState extends State<imageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Widget ສະແດງຮູບພາບ'),
      ),
      body: Column(
        children: [
          Text('ຮູບພາບຈາກ ອິນເຕີເນັດ'),
          Image.network(
              "https://www.askinclinic.co.uk/wp-content/uploads/2020/02/Beautiful-Woman-11-scaled.jpg"),
          Text('ດຶງຮູບພາບຈາກເຄື່ອງ'),
          Image.asset('assets/cat01.jpg')
        ],
      ),
    );
  }
}
