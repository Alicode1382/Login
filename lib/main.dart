import 'package:flutter/material.dart';
import 'package:voorood/screen/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Vazir',
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: new Directionality(
            textDirection: TextDirection.rtl, child: LoginScreen()));
  }
}
