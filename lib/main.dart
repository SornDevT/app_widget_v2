import 'package:flutter/material.dart';
import 'pages/AppBar.dart';
import 'pages/From.dart';
import 'pages/Home.dart';
import 'pages/TabBar.dart';
import 'widget/CRWidget.dart';
import 'widget/ContainerWidget.dart';
import 'widget/ExpandedWidget.dart';
import 'widget/GridViewWidget.dart';
import 'widget/ImageWidget.dart';
import 'widget/ListViewBuilder.dart';
import 'widget/ListViewWidget.dart';
import 'widget/SizedBoxWidget.dart';
import 'widget/StackWidget.dart';
import 'widget/WrapWidget.dart';

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
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      home: FormWidget(),
    );
  }
}
