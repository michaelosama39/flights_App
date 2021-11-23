import 'package:flutter/material.dart';

Widget TextFieldOfDate(String text , Function(String) onChanged) {
  String? seleced;
  return TextField(
    keyboardType: TextInputType.datetime,
    decoration: InputDecoration(
      hintText: text,
      labelText: text,
      contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
      prefixIcon: Icon(
        Icons.calendar_today,
        color: Colors.black,
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
            width: 1.5, style: BorderStyle.solid, color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
            width: 1.5, style: BorderStyle.solid, color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      labelStyle: TextStyle(color: Colors.black),
    ),
    onChanged: (value) {
      onChanged(value);
      seleced = value;
    },
  );
}