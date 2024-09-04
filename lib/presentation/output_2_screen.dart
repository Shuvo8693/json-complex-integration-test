import 'package:flutter/material.dart';
import 'package:local_json_integration/data/model/android_version.dart';
import 'package:local_json_integration/widgets/output_elementbox.dart';

class Output2Screen extends StatelessWidget {
  const Output2Screen(
      {super.key,
      required this.androidVersionList0,
      required this.androidVersionList1,
      required this.androidVersionList2});

  final List<AndroidVersion?> androidVersionList0;
  final List<AndroidVersion?> androidVersionList1;
  final List<AndroidVersion?> androidVersionList2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Output-2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Row(
                children: androidVersionList0.map((element) {
                  return element != null
                      ? OutputElementBox(
                          element: element, colors: Colors.orangeAccent)
                      : getNullBox;
                }).toList(),
              ),
            ),
            Flexible(
              child: Row(
                children: androidVersionList1.map((element) {
                  return element != null
                      ? OutputElementBox(
                          element: element, colors: Colors.orangeAccent)
                      : getNullBox;
                }).toList(),
              ),
            ),
            Flexible(
              child: Row(
                children: androidVersionList2.map((element) {
                  return element != null
                      ? OutputElementBox(
                          element: element, colors: Colors.orangeAccent)
                      : getNullBox;
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding get getNullBox {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 70,
        height: 20,
        color: Colors.redAccent,
      ),
    );
  }
}
