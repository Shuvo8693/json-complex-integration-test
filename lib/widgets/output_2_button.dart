import 'package:flutter/material.dart';
import 'package:local_json_integration/data/datasource/input_2_local_datasource.dart';
import 'package:local_json_integration/data/model/android_version.dart';
import 'package:local_json_integration/presentation/output_2_screen.dart';

class Output2Button extends StatelessWidget {
  const Output2Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: const ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.orangeAccent)),
        onPressed: () async {
          List<List<AndroidVersion?>> list2 =
              await Input2LocalDatasource.fetchInput2();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Output2Screen(
                androidVersionList0: list2[0],
                androidVersionList1: list2[1],
                androidVersionList2: list2[2],
              ),
            ),
          );
        },
        child: const Text('Output 2'));
  }
}
