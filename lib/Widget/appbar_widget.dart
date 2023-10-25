import 'package:flutter/material.dart';

PreferredSizeWidget getAppBarWdiget({required String title}) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    foregroundColor: Colors.black,
    title: Text(title),
    centerTitle: true,
  );
}
