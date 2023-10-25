import "package:flutter/material.dart";
import "package:flutter_signal_vip/Widget/post_widget.dart";

class BlogScreen extends StatelessWidget {
  BlogScreen({super.key});
  final List<Widget> listBlogWidget = [
    getBlogPost(
        imageName: 's.png',
        title: 'برای ۱۴ آبان Safemoon سیگنال',
        sellValue: '12,560',
        buyValue: '12,365'),
    getBlogPost(
        imageName: '/a.png',
        title: 'برای ۱۴ آبان Alchemy سیگنال',
        sellValue: '10,2350',
        buyValue: '11.1155'),
    getBlogPost(
        imageName: 'c.png',
        title: 'برای ۱۴ آبان Cosmos سیگنال',
        sellValue: '45',
        buyValue: '30'),
    getBlogPost(
        imageName: 'r.png',
        title: 'برای ۱۴ آبان Ripple سیگنال',
        sellValue: '139,560',
        buyValue: '123,768'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        title: Text('vip اخبار و سیگنال های'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ...listBlogWidget,
                  SizedBox(
                    height: 20.0,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'خروج از حساب',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
