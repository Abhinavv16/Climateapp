import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';

class Location {
   double latitude;
   double longitude;

   Future <void> getcurrentlocation() async {
     try{
       Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
       print(position);
       latitude = position.latitude;
       longitude = position.longitude;
     }catch(e) {
       print(e);
     }
   }
}