import 'package:flights_app/bussiness_logic/conestants/my_colors.dart';
import 'package:flights_app/flights_select/data/flight_model.dart';
import 'package:flutter/material.dart';

class FlightDetails extends StatefulWidget {
  final Map flight;
  final String value_of_date;
  final String value_of_class;
  final String value_of_traveller;

  const FlightDetails(
      {Key? key,
      required this.flight,
      required this.value_of_date,
      required this.value_of_class,
      required this.value_of_traveller})
      : super(key: key);

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
                ),
              ),
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
                          FlatButton(
                            child: Text(
                              widget.value_of_class,
                              style: TextStyle(color: Colors.black),
                            ),
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(20.0),
                              side: BorderSide(color: Colors.black, width: 1),
                            ),
                            onPressed: null,
                          ),
                          Row(
                            children: [
                              Text(
                                'SLM',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.flight_takeoff_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'BTL',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '1 Flight Ticket',
                          style: TextStyle(color: Colors.black, fontSize: 22),
                        ),
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Table(
                        children: [
                          TableRow(children: [
                            Text(
                              'Passengers',
                              style: TextStyle(fontSize: 17),
                            ),
                            Text(
                              'Date',
                              style: TextStyle(fontSize: 17),
                            ),
                          ]),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Table(
                        children: [
                          TableRow(children: [
                            Text(
                              widget.value_of_traveller,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                            Text(
                              widget.value_of_date,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ]),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Table(
                        children: [
                          TableRow(children: [
                            Text(
                              'Flight No.',
                              style: TextStyle(fontSize: 17),
                            ),
                            Text(
                              'Gate',
                              style: TextStyle(fontSize: 17),
                            ),
                          ]),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Table(
                        children: [
                          TableRow(children: [
                            Text(
                              widget.flight['flight no'],
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                            Text(
                              '66 B',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ]),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Table(
                        children: [
                          TableRow(children: [
                            Text(
                              'Class',
                              style: TextStyle(fontSize: 17),
                            ),
                            Text(
                              'Seat',
                              style: TextStyle(fontSize: 17),
                            ),
                          ]),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Table(
                        children: [
                          TableRow(children: [
                            Text(
                              widget.value_of_class,
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                            Text(
                              '21 B',
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ]),
                        ],
                      ),
                      SizedBox(
                        height: 22,
                      ),
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Image.network(
                        'https://user-images.githubusercontent.com/473529/39586135-ff598000-4ebb-11e8-81f9-5698df79111f.png',
                        height: 90,
                        width: 250,
                      ),
                      Text('98889 0958 1758 1287'),
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
