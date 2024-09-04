import 'package:flutter/material.dart';
import 'package:local_json_integration/data/model/android_version.dart';

class OutputElementBox extends StatelessWidget {
  const OutputElementBox({
    super.key,
    required AndroidVersion element,
    required this.colors,
  }) : _element = element;
  final AndroidVersion _element;
  final Color colors;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 20,
        width: 80,
        decoration: BoxDecoration(
            color: colors,
            borderRadius: const BorderRadius.all(Radius.circular(6))),
        child: Center(
          child: Text(
            _element.title.toString(),
          ),
        ),
      ),
    );
  }
}
