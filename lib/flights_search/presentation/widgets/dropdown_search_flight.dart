import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
// GetStorage
Widget DropdownSearchFlight(String text, List<String> list, Icon icon,Function(String) onChanged) {
  String? seleced;
  return DropdownSearch<String>(
    validator: (value) => value == null ? "required field" : null,
    dropdownSearchDecoration: InputDecoration(
      hintText: text,
      labelText: text,
      contentPadding: EdgeInsets.fromLTRB(12, 12, 0, 0),
      prefixIcon: icon,
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
      hintStyle: TextStyle(color: Colors.black),
      labelStyle: TextStyle(color: Colors.black),
    ),
    items: list,
    selectedItem: seleced,
    mode: Mode.MENU,
    clearButton: Icon(Icons.clear),
    showClearButton: true,
    onChanged: (value) {
      onChanged(value!);
      seleced = value;
    },
  );
}