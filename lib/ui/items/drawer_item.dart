import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget renderDrawerItem(
    {@required String title, @required Function onTap, Widget leading}) {
  return ListTile(
    leading: leading,
    onTap: onTap,
    title: Text(
      title,
    ),
    trailing: Icon(
      CupertinoIcons.right_chevron,
    ),
  );
}
