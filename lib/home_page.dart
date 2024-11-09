import 'package:bar_chart_demo/custom_bar_chart.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // Create some data
  List<double> effortTracker = [
    90.5,
    60.2,
    40.2,
    30.3,
    90.9,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 150,
            child: Center(
              child: Text('BarChart Demo', style: TextStyle(fontSize: 25.0)),
            )
          ),
          Text('This is an example bar chart', style: TextStyle(fontSize: 20.0)),
          SizedBox(height: 20),
          SizedBox(
            height: 400,
            child: CustomBarChart(
                effortTracker: effortTracker
            ),
          ),
        ],
      ),
    );
  }
}
