import 'package:flutter/material.dart';
import 'package:flutter_signal_vip/screens/blog_page.dart';
import 'package:flutter_signal_vip/screens/password_recovery.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'VIP سیگنال ',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                  ],
                ),
                Image(
                  image: AssetImage('images/w.png'),
                ),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                      minimumSize: Size(200.0, 40.0),
                      side: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      )),
                  onPressed: () {
                    navigateToPage(context, BlogScreen());
                  },
                  child: Text(
                    'ورود به حساب',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
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
                    'ثبت نام',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.grey,
                  ),
                  onPressed: () {
                    navigateToPage(context, PasswordRecovery());
                  },
                  child: Text(
                    'فراموشی رمز عبور',
                    style: TextStyle(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void navigateToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) => page,
      ),
    );
  }
}
