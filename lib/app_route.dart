import 'package:flights_app/bussiness_logic/conestants/strings.dart';
import 'package:flights_app/flight_details/presentation/screen/flight_details.dart';
import 'package:flights_app/flights_search/presentation/screen/flights_search.dart';
import 'package:flights_app/flights_select/presentation/screen/flights_select.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRoute {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case searchScreen:
        return MaterialPageRoute(
          builder: (context) => FlightsSearch(),
        );

      case selectScreen:
        return MaterialPageRoute(
          builder: (context) => FlightsSelect(flights_select: '', value_of_traveller: '', value_of_class: '', value_of_date: '',),
        );

      case detailsScreen:
        return MaterialPageRoute(
          builder: (context) => FlightDetails(flight: {}, value_of_traveller: '', value_of_class: '', value_of_date: '',),
        );
    }
  }
}
