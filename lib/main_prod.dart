

/*
this is the main entry point for production enviroment
*/
import 'package:family/core/environment/environment.dart';
import 'package:family/main_app.dart';

Future<void> main() async {
  await mainApp(Environment.prod);
}