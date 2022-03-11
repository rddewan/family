import 'dart:async';
import 'package:family/core/environment/environment.dart';
import 'package:family/main_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



/// This is the main entry point for app
/// @param [Environment environment]
Future<void> mainApp(Environment environment) async {
    // Since we are calling the async function / native code
    // we need to make sure the flutter has initialize the widget binding 
    WidgetsFlutterBinding.ensureInitialized();    

    // Google font license    
    LicenseRegistry.addLicense(() async* {
      final license = await rootBundle.loadString('google_fonts/LICENSE.txt');
      yield LicenseEntryWithLineBreaks(['google_fonts'], license);
    });

    
    runApp(const RootRestorationScope(
      restorationId: 'root', 
      child:  MainWidget()
      )
    );    

  }