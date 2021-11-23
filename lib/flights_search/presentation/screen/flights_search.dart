import 'package:dropdown_search/dropdown_search.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flights_app/bussiness_logic/conestants/my_colors.dart';
import 'package:flights_app/flights_search/presentation/widgets/dropdown_search_flight.dart';
import 'package:flights_app/flights_search/presentation/widgets/raised_button_of_show.dart';
import 'package:flights_app/flights_search/presentation/widgets/text_field_of_date.dart';
import 'package:flights_app/flights_select/presentation/screen/flights_select.dart';
import 'package:flutter/material.dart';

class FlightsSearch extends StatefulWidget {
  const FlightsSearch({Key? key}) : super(key: key);

  @override
  _FlightsSearchState createState() => _FlightsSearchState();
}

enum Flights { one_way, round_trip, multi_city }

class _FlightsSearchState extends State<FlightsSearch> {
  List<String> list_of_Traveller = ['1 Adult', '1 Child' , '1 Infant'];
  List<String> list_of_Class = ['Business', 'Accrual' , 'economy'];
  List<String> list_of_cities = [];
  late String value_of_To;
  late String value_of_From;
  late String value_of_Class;
  late String value_of_Traveller;
  late String value_of_date;

  Flights type = Flights.one_way;

  late final dref = FirebaseDatabase.instance.reference();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      showCities();
    });
  }

  showCities() {
    dref.child('cities').once().then((value) {
      final data = value.value as Map<dynamic, dynamic>;
      data.forEach((key, value) {
        list_of_cities.add(value);
        print(value);
      });
    });
  }

  searchFlights() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => FlightsSelect(
          flights_select: '$value_of_From-$value_of_To',
          value_of_date: value_of_date,
          value_of_class: value_of_Class,
          value_of_traveller: value_of_Traveller,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.mybackgroud,
      appBar: AppBar(
        title: Text(
          'Flights Search',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: MyColors.mybackgroud,
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          children: [
            SizedBox(
              height: 6,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: RaisedButton(
                    child: Row(
                      children: [
                        Icon(
                          Icons.arrow_forward_outlined,
                          color: type == Flights.one_way
                              ? Colors.white
                              : Colors.black,
                          size: 17,
                        ),
                        Text(
                          'One Way',
                          style: TextStyle(
                              color: type == Flights.one_way
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    color:
                        type == Flights.one_way ? Colors.black : Colors.white,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                    onPressed: () {
                      setState(() {
                        type = Flights.one_way;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RaisedButton(
                    child: Row(
                      children: [
                        Icon(
                          Icons.threesixty,
                          color: type == Flights.round_trip
                              ? Colors.white
                              : Colors.black,
                          size: 17,
                        ),
                        Text(
                          'Round Trip',
                          style: TextStyle(
                              color: type == Flights.round_trip
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    color: type == Flights.round_trip
                        ? Colors.black
                        : Colors.white,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                    onPressed: () {
                      setState(() {
                        type = Flights.round_trip;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RaisedButton(
                    child: Row(
                      children: [
                        Icon(
                          Icons.album_sharp,
                          color: type == Flights.multi_city
                              ? Colors.white
                              : Colors.black,
                          size: 17,
                        ),
                        Text(
                          'Multi City',
                          style: TextStyle(
                              color: type == Flights.multi_city
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    color: type == Flights.multi_city
                        ? Colors.black
                        : Colors.white,
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(20.0),
                    ),
                    onPressed: () {
                      setState(() {
                        type = Flights.multi_city;
                      });
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Stack(
              children: [
                Column(
                  children: [
                    DropdownSearchFlight(
                      "From",
                      list_of_cities,
                      Icon(
                        Icons.airplanemode_active,
                        color: Colors.black,
                      ),
                      (value) {
                        value_of_From = value;
                        print(value_of_From);
                      },
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    DropdownSearchFlight(
                      "To",
                      list_of_cities,
                      Icon(
                        Icons.add_location,
                        color: Colors.black,
                      ),
                      (value) {
                        value_of_To = value;
                        print(value_of_To);
                      },
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  height: 77,
                  padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: IconButton(
                    icon: Icon(
                      Icons.cached,
                      size: 50,
                      color: Colors.black,
                    ),
                    onPressed: null,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                  child: TextFieldOfDate('Date', (value) {
                    value_of_date = value;
                    print(value_of_date);
                  }),
                ),
                SizedBox(
                  width: 7,
                ),
                Expanded(
                  child: DropdownSearchFlight(
                    "Class",
                    list_of_Class,
                    Icon(
                      Icons.add_location,
                      color: Colors.black,
                    ),
                    (value) {
                      value_of_Class = value;
                      print(value_of_Class);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 7,
            ),
            DropdownSearchFlight(
              'Traveller',
              list_of_Traveller,
              Icon(
                Icons.airline_seat_recline_normal,
                color: Colors.black,
              ),
              (value) {
                value_of_Traveller = value;
                print(value_of_Traveller);
              },
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButtonOfShow(searchFlights),
          ],
        ),
      ),
    );
  }
}
