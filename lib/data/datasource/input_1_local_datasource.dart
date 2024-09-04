import 'package:local_json_integration/data/model/android_version.dart';
import 'package:local_json_integration/widgets/asset_parcer.dart';
import 'package:local_json_integration/widgets/asset_path.dart';

class Input1LocalDatasource {
  static List<AndroidVersion?> androidVersionList0 = [];
  static List<AndroidVersion?> androidVersionList1 = [];

  static Future<List<List<AndroidVersion?>>> fetchInput1() async {
    androidVersionList0 = [];
    androidVersionList1 = [];
    List<dynamic> value =
        await JsonUtility.readJsonFromAsset(AssetPath.input1Path);
    //print(value);
    for (var element in value) {
      if (element is Map && element is! List) {
        int maxKey = int.parse(element.keys.last);
        int minKey = int.parse(element.keys.first);
        for (int i = minKey; i <= maxKey; i++) {
          if (element.containsKey(i.toString())) {
            var value = element[i.toString()];
            androidVersionList0
                .add(AndroidVersion(id: value['id'], title: value['title']));
          } else {
            androidVersionList0.add(null);
          }
        }
      } else if (element is List) {
        for (var subElement in element) {
          if (subElement is Map &&
              subElement['id'] != null &&
              subElement['title'] != null) {
            androidVersionList1.add(AndroidVersion(
                id: subElement['id'], title: subElement['title']));
          }
        }
      }
    }
    print(androidVersionList1.map((version) => version.toString()).toList());
    return [androidVersionList0, androidVersionList1];
  }
}
