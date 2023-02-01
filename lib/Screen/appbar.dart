import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {
  final icon =CupertinoIcons.text_justify;
  var onPressed;
  return  AppBar(
    leading: BackButton(),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      IconButton(onPressed: onPressed,
          icon: Icon(icon),
      )
    ],
  );
}
