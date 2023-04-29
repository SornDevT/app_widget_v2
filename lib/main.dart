import 'package:flutter/material.dart';
import 'pages/Home.dart';
import 'widget/CRWidget.dart';
import 'widget/ContainerWidget.dart';
import 'widget/GridViewWidget.dart';
import 'widget/ImageWidget.dart';
import 'widget/ListViewBuilder.dart';
import 'widget/ListViewWidget.dart';
import 'widget/StackWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo',
      home: StackWidget(),
    );
  }
}
