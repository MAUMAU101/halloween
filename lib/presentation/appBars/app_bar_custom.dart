import 'package:flutter/material.dart';

mixin AppBarCustom{
  AppBar appBarWithoutReturnButton({String title = 'no tiene Titulo'}) =>
      AppBar(
        title: Text(title),
        automaticallyImplyLeading:
          false,
          );
  AppBar appBarWithBackAndTitle({String title = 'no tiene Titulo'}) => AppBar(
    title: Text(title),
  );
}