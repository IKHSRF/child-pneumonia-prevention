import 'package:flutter/material.dart';

import 'pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Child Pneumonia Prevention",
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF8F8F8),
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => LandingPage(),
        '/home': (_) => HomePage(),
        '/detailWithPhoto': (_) => DetailPenjelasanFoto(),
        '/detailWithVideo': (_) => DetailPenjelasanVideo(),
      },
    );
  }
}
