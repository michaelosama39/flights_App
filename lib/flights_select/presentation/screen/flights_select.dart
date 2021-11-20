import 'package:flutter/material.dart';

class FlightsSelect extends StatefulWidget {
  const FlightsSelect({Key? key}) : super(key: key);

  @override
  _FlightsSelectState createState() => _FlightsSelectState();
}

class _FlightsSelectState extends State<FlightsSelect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flights Select'),
      ),
      body: null,
    );
  }
}
