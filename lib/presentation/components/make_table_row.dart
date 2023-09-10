import 'package:flutter/material.dart';

import '../styles/styles_text.dart';

TableRow makeTableRow(
  String comment,
  String data, {
  EdgeInsetsGeometry padding = const EdgeInsets.only(bottom: 16),
  TextStyle dataStyle = StylesText.data,
  TextAlign? dataAlign,
}) {
  return TableRow(children: [
    Padding(padding: padding, child: Text(comment, style: StylesText.comment)),
    Padding(
        padding: padding,
        child: Text(
          data,
          style: dataStyle,
          textAlign: dataAlign,
        ))
  ]);
}
