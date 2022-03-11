
import 'package:family/core/environment/environment.dart';
import 'package:family/main_app.dart';


/*
this is a main entry point for development enviroment
*/
Future<void> main() async {
  await mainApp(Environment.dev);
}