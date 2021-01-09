import 'package:flutter/material.dart';

import 'package:flea_market/common/config/theme.dart';

class Input extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final bool isPassword;
  final Function onChanged;

  const Input(
      {Key key,
      this.icon,
      this.hintText,
      this.isPassword = false,
      this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: BoxDecoration(
        color: Themes.secondaryColor,
        borderRadius: BorderRadius.circular(29),
      ),
      child: TextField(
        onChanged: onChanged,
        cursorColor: Themes.primaryColor,
        obscureText: isPassword,
        decoration: InputDecoration(
            icon: Icon(icon, color: Themes.primaryColor),
            hintText: hintText,
            border: InputBorder.none),
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
