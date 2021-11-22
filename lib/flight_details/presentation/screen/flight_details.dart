import 'package:flights_app/bussiness_logic/conestants/my_colors.dart';
import 'package:flights_app/flights_select/data/flight_model.dart';
import 'package:flutter/material.dart';

class FlightDetails extends StatefulWidget {
  final Map flight;

  const FlightDetails({Key? key, required this.flight}) : super(key: key);

  @override
  _FlightDetailsState createState() => _FlightDetailsState();
}

class _FlightDetailsState extends State<FlightDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mybackgroud,
      appBar: AppBar(
        title: Text(
          'Flight Details',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: MyColors.mybackgroud,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                  child: Container(
                color: Colors.black,
              )),
              Expanded(
                  child: Container(
                color: MyColors.mybackgroud,
              )),
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 450,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RaisedButton(
                            onPressed: null,
                          ),
                          Row(
                            children: [
                              Text('SLM'),
                              Icon(Icons.flight_takeoff_outlined),
                              Text('BTL'),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text('1 Flight Ticket'),
                      ),
                      SizedBox(height: 20,),
                      Table(
                        children: [
                          TableRow(
                            children: [
                              Text('Passengers'),
                              Text('Date'),
                            ]
                          ),
                          TableRow(
                              children: [
                                Text('2 Adults'),
                                Text('12 Feb, 2020'),
                              ]
                          ),
                          TableRow(
                              children: [
                                Text('Flight No.'),
                                Text('Gate'),
                              ]
                          ),
                          TableRow(
                              children: [
                                Text('BKN7'),
                                Text('66 B'),
                              ]
                          ),
                          TableRow(
                              children: [
                                Text('Class'),
                                Text('Seat'),
                              ]
                          ),
                          TableRow(
                              children: [
                                Text('Business'),
                                Text('21 B'),
                              ]
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
