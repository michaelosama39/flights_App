import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flights_app/bussiness_logic/conestants/my_colors.dart';
import 'package:flights_app/flights_select/data/flight_model.dart';
import 'package:flights_app/flights_select/presentation/widgets/flight_item.dart';
import 'package:flutter/material.dart';

class FlightsSelect extends StatefulWidget {
  const FlightsSelect({Key? key}) : super(key: key);

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
    .child('Alex , Egypt-New Delhi , India');

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mybackgroud,
      appBar: AppBar(
        title: Text('Flights Select'),
      ),
      body: FirebaseAnimatedList(query: _ref, itemBuilder: (context, snapshot, animation, index) {
        Map value = snapshot.value;
        return FlightItem(flight: value,);
      },),
    );
  }

  Widget Item({Map? map}){
    return Center(
      child: Column(
        children: [
          Text(map!['flight no']),
        ],
      ),
    );
  }
}
