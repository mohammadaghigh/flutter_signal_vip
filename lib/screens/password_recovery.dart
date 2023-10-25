import 'package:flutter/material.dart';
import 'package:flutter_signal_vip/Widget/appbar_widget.dart';

class PasswordRecovery extends StatelessWidget {
  const PasswordRecovery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: getAppBarWdiget(title: 'فراموشی رمز'),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 300.0,
                  width: 250.0,
                  child: Image(
                    image: AssetImage(
                      'images/forgot.png',
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'ایمیل یا شماره خود را وارد نمایید.',
                      hintTextDirection: TextDirection.rtl,
                      contentPadding: EdgeInsets.all(10.0),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(200.0, 40.0),
                      backgroundColor: Colors.black,
                      foregroundColor: Colors.white),
                  onPressed: () {},
                  child: Text(
                    'ارسال کد',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
