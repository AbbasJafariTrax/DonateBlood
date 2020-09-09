import 'package:flutter/material.dart';

AppBar myAppBar({String title}) {
  return AppBar(
    backgroundColor: Color.fromRGBO(253, 51, 153, 1),
    centerTitle: true,
    title: Text(
      title,
      style: TextStyle(color: Colors.white),
    ),
  );
}
