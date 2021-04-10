import 'package:diplomatic/configs.dart';
import 'package:diplomatic/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

AppBar homeAppBar() {
  return AppBar(
    centerTitle: true,
    backgroundColor: Colors.white,
    actions: [
      IconButton(
        icon: Icon(Icons.share),
        onPressed: () {
          Share.share(Configs.url);
        },
      ),
    ],
    title: SizedBox(
      height: 100,
      width: 150,
      child: Image(
        image: AssetImage(secondaryLogo),
      ),
    ),
  );
}
