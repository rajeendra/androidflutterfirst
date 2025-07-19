import 'package:flutter/material.dart';
// App
import 'package:androidflutterfirst/app_home.dart' as app;
import 'package:androidflutterfirst/app_constants.dart' as constants;

// Run with --stacktrace option to get the stack trace. Run with --info or --debug option to get more log output. Run with --scan to get full insights.

bool isCameraEnabled = false;

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return buildMaterialApp(context);
  }
}

Widget buildMaterialApp(BuildContext context){
  return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.green
      ),

      // Always one home page ( stateful ) for one app
      // On top of home page you can build dynamically Scaffold s and/or Body s as you needed inside build() method
      // Each build() has its own Build context and the State currently its in
      // Each time you call setSate() only run the build() in the current state where the setSate() is call

      home: app.HomePage(title: constants.APP_TITLE, key: ValueKey<String>("wyewriyweu"))
  );
}





