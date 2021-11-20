import 'package:flutter/material.dart';

Widget RaisedButtonOfShow(void method()) {
  return ConstrainedBox(
    constraints: BoxConstraints.tightFor(width: 300, height: 45),
    child: RaisedButton(
      child: Text(
        'Search Flights',
        style: TextStyle(
            color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
      ),
      color: Colors.black,
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(8.0),
      ),
      onPressed: () {
        method();
      },
    ),
  );
}
