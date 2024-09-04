import 'package:local_json_integration/data/model/android_version.dart';
import 'package:local_json_integration/widgets/asset_parcer.dart';
import 'package:local_json_integration/widgets/asset_path.dart';

class Input2LocalDatasource {
  static List<AndroidVersion?> androidVersionList0 = [];
  static List<AndroidVersion?> androidVersionList1 = [];
  static List<AndroidVersion?> androidVersionList2 = [];

  static Future<List<List<AndroidVersion?>>> fetchInput2() async {
    androidVersionList0 = [];
    androidVersionList1 = [];
    androidVersionList2 = [];
    List<dynamic> value =
        await JsonUtility.readJsonFromAsset(AssetPath.input2Path);

    for (var element in value) {
      if (element is Map) {
        if (element.containsKey('0') && element['0']['id'] == 1) {
          _processMapData(element as Map<String, dynamic>, androidVersionList0);
        } else if (element.containsKey('0') && element['0']['id'] == 8) {
          _processMapData(element as Map<String, dynamic>, androidVersionList1);
        }
      } else if (element is List) {
        for (var subElement in element) {
          if (subElement is Map &&
              subElement['id'] != null &&
              subElement['title'] != null) {
            androidVersionList2.add(AndroidVersion(
                id: subElement['id'], title: subElement['title']));
          }
        }
      }
    }
    return [androidVersionList0, androidVersionList1, androidVersionList2];
  }

  static void _processMapData(
      Map<String, dynamic> element, List<AndroidVersion?> list) {
    int minKey = int.parse(element.keys.first);
    int maxKey = int.parse(element.keys.last);
    for (int i = minKey; i <= maxKey; i++) {
      if (element.containsKey(i.toString())) {
        var value = element[i.toString()];
        list.add(AndroidVersion(id: value['id'], title: value['title']));
      } else {
        list.add(null);
      }
    }
  }
}
