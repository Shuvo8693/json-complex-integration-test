import 'package:flutter/material.dart';
import 'package:local_json_integration/data/model/android_version.dart';
import 'package:local_json_integration/widgets/output_elementbox.dart';

class Output1Screen extends StatelessWidget {
  const Output1Screen({
    super.key,
    required this.androidVersionList1,
    required this.androidVersionList2,
  });

  final List<AndroidVersion?> androidVersionList1;
  final List<AndroidVersion?> androidVersionList2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Output-1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: androidVersionList1.map((element) {
                  return element != null
                      ? OutputElementBox(
                          element: element,
                          colors: Colors.cyan,
                        )
                      : getNullBox;
                }).toList(),
              ),
            ),
            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: androidVersionList2.map((element) {
                  return element != null
                      ? OutputElementBox(
                          element: element,
                          colors: Colors.cyan,
                        )
                      : getNullBox;
                }).toList(),
              ),
            )
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
