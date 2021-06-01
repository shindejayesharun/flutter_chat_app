import 'package:flutter/material.dart';
import 'file:///C:/disk/project/flutter/flutter_chat_app/flutter_chat_app/lib/screens/welcome/welcome.dart';
import 'package:flutter_chat_app/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      home: WelcomeScreen(),
    );
  }
}
