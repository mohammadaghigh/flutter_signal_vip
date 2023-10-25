import 'package:flutter/material.dart';
import 'package:flutter_signal_vip/screens/login_page.dart';

void main() {
  runApp(const Application());
}

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: LoginPage(),
    );
  }
}
