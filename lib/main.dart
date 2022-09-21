import 'package:flutter/material.dart';

import 'components/widget_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final heigth = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Kurumeee - cor zebrado',
        ),
      ),
      body: ListView.separated(
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return WidgetContainer(
            label: index.toString(),
            colorBorder: Colors.red.shade100,
            colorDecoration: index % 2 != 0
                ? Colors.redAccent.withOpacity(0.8)
                : Colors.redAccent,
          );
        },
        itemCount: 10,
        separatorBuilder: (BuildContext context, int index) {
          return Container();
        },
      ),
    );
  }
}
