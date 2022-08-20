import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task_2/widget.dart';
import 'model.dart';
void main() {
  runApp(const MyApp());
  SystemChrome.setEnabledSystemUIOverlays([]);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 17, top: 13, right: 17),
        color: Color(0xfff8fffd),
        child: Column(
          children: [
            Row(
              children: [
                Text('9:41',
                    style: TextStyle(color: Colors.black, fontSize: 18)),
                Spacer(
                  flex: 1,
                ),
                Icon(
                  Icons.wifi,
                  size: 16,
                  color: Colors.black,
                ),
                Icon(
                  Icons.network_cell,
                  size: 16,
                  color: Colors.black,
                ),
                Icon(
                  Icons.battery_6_bar_sharp,
                  size: 16,
                  color: Colors.black,
                ),
              ],
            ),
            Numbers(Num: ''),

          ],
        ),
      ),
    );
  }
}



