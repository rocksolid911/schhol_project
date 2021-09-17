import 'datajson.dart';
import 'jclas.dart';

Future<JsonDemo> readjson() async {
    final String response = await jclas().jsa();
    final jsonDemo = jsonDemoFromJson(response);
    return jsonDemo;
  }