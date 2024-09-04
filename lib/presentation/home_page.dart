import 'package:flutter/material.dart';
import 'package:local_json_integration/widgets/output_1_button.dart';
import 'package:local_json_integration/widgets/output_2_button.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /// Output-1
            SizedBox(
              height: 110,
              width: 250,
              child: Output1Button(),
            ),
            SizedBox(height: 10),

            /// Output-2
            SizedBox(
              height: 150,
              width: 110,
              child: Output2Button(),
            ),
          ],
        ),
      ),
    );
  }
}
