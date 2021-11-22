import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flights_app/bussiness_logic/conestants/my_colors.dart';
import 'package:flights_app/flights_select/presentation/widgets/flight_item.dart';
import 'package:flutter/material.dart';

class FlightsSelect extends StatefulWidget {
  final String flights_select;
  const FlightsSelect({Key? key , required this.flights_select}) : super(key: key);

  @override
  _FlightsSelectState createState() => _FlightsSelectState();
}

class _FlightsSelectState extends State<FlightsSelect> {
  late Query _ref;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _ref = FirebaseDatabase.instance.reference()
    .child('flights')
    .child(widget.flights_select);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mybackgroud,
      appBar: AppBar(
        title: Text('Flights Select' , style: TextStyle(color: Colors.black),),
        backgroundColor: MyColors.mybackgroud,
        leading: Icon(Icons.arrow_back , color: Colors.black,),
      ),
      body: FirebaseAnimatedList(query: _ref, itemBuilder: (context, snapshot, animation, index) {
        Map value = snapshot.value;
        return FlightItem(flight: value,);
      },),
    );
  }
}
