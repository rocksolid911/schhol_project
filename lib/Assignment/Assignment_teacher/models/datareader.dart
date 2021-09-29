import 'datajson.dart';
import 'jclas.dart';

Future<JsonDemo> readjson() async {
    final String response = jclas().jsa();
    final jsonDemo = jsonDemoFromJson(response);
    return jsonDemo;
  }