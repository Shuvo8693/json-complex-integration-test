import 'package:flutter/material.dart';
import 'package:local_json_integration/data/datasource/input_1_local_datasource.dart';
import 'package:local_json_integration/data/model/android_version.dart';
import 'package:local_json_integration/presentation/output_1_screen.dart';

class Output1Button extends StatelessWidget {
  const Output1Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.cyan)),
        onPressed: () async {
          List<List<AndroidVersion?>> list =
              await Input1LocalDatasource.fetchInput1();
          if (list.isNotEmpty) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Output1Screen(
                  androidVersionList1: list[0],
                  androidVersionList2: list[1],
                ),
              ),
            );
          }
        },
        child: const Text('Output 1'));
  }
}
