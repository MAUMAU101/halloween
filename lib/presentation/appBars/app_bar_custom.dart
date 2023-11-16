import 'package:flutter/material.dart';
mixin AppBarCustom {
  AppBar appBarWithOutReturnButton({String title = 'no tiene Titulo'}) =>
      AppBar(
        title: Text(title),
        automaticallyImplyLeading:
            false,
      );
  AppBar appBarWithReturnButton({String title = 'no tiene Titulo'}) => AppBar(
        title: Text(
            title),
  );
}