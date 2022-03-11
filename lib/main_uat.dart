
import 'package:family/core/environment/environment.dart';
import 'package:family/main_app.dart';


/// this is the main entry point for UAT environment
/// 
Future<void> main() async {
  await mainApp(Environment.uat);
}