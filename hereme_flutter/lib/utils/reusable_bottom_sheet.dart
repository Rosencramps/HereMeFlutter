import 'package:flutter/material.dart';
import 'package:hereme_flutter/contants/constants.dart';

class ReusableBottomActionSheetListTile extends StatelessWidget {
  ReusableBottomActionSheetListTile(
      {@required this.iconData, @required this.title, @required this.onTap});

  final IconData iconData;
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(iconData),
      title: Text(
        title,
        style: kTextFieldStyle,
      ),
      onTap: onTap,
    );
  }
}