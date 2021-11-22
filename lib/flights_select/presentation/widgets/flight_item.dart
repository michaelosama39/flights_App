import 'package:flights_app/bussiness_logic/conestants/my_colors.dart';
import 'package:flutter/material.dart';

class FlightItem extends StatelessWidget {
  final Map flight;
  const FlightItem({Key? key, required this.flight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.only(right: 8, left: 8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkGwro-QBOObNSbNGyaP1vrGLlSvJUwLadjA&usqp=CAU',
                    width: 80,
                    height: 65,
                  ),
                  Text( flight['price'], style: TextStyle(color: MyColors.myYellow, fontSize: 17 , fontWeight: FontWeight.bold),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(flight['flight time'] , style: TextStyle(color: Colors.black , fontSize: 18),),
                      Text('AMS, Mon' , style: TextStyle(color: MyColors.mygray2, fontSize: 15),),
                    ],
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Icon(Icons.flight_takeoff , size: 30,),
                  SizedBox(
                    width: 16,
                  ),
                  Column(
                    children: [
                      Text(flight['land time'] , style: TextStyle(color: Colors.black , fontSize: 18),),
                      Text('DEL, Tue' , style: TextStyle(color: MyColors.mygray2, fontSize: 15),),
                    ],
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Column(
                    children: [
                      Text('Flight No.'  , style: TextStyle(color: Colors.black , fontSize: 18),),
                      Text(flight['flight no'] , style: TextStyle(color: MyColors.mygray2, fontSize: 15),),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Text('Duration: ' , style: TextStyle(fontSize: 15, color: MyColors.mygray2),),
                  Text('17h 15m' , style: TextStyle(fontSize: 15, color: Colors.black),),
                  Text('| Non - Stop', style: TextStyle(fontSize: 15, color: MyColors.mygray2),),
                ],
              ),
              SizedBox(
                height: 6,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
