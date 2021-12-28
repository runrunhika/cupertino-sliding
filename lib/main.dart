import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int? groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        child: Card(
          child: Row(
            children: [
              Text("Sound"),
              Spacer(),
              CupertinoSlidingSegmentedControl<int>(
                backgroundColor: CupertinoColors.white,
                thumbColor: CupertinoColors.activeGreen,
                padding: EdgeInsets.all(4),
                groupValue: groupValue,
                children: {
                  0: buildSegment('ON'),
                  1: buildSegment("OFF"),
                },
                onValueChanged: (groupValue) {
                  setState(() {
                    this.groupValue = groupValue;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSegment(String text) => Container(
        padding: EdgeInsets.all(12),
        child: Text(
          text,
          style: TextStyle(fontSize: 18),
        ),
      );
}
