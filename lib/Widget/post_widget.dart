import 'package:flutter/material.dart';

Widget getBlogPost(
    {required String imageName,
    required String title,
    required String sellValue,
    required String buyValue}) {
  return Column(
    children: [
      Card(
        margin: EdgeInsets.all(7.0),
        elevation: 7.0,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image(
                image: AssetImage(
                  'images/$imageName',
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17.0,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'فروش روی: $sellValue',
                    style: TextStyle(color: Colors.red),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Icon(
                    Icons.sell,
                    color: Colors.red,
                    size: 16.0,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Text(
                    'خرید روی: $buyValue',
                    style: TextStyle(color: Colors.green),
                  ),
                  SizedBox(
                    width: 3.0,
                  ),
                  Icon(
                    Icons.price_check,
                    color: Colors.green,
                    size: 20.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
