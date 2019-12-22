
import 'package:flutter/material.dart';
import './arayuz/girisekrani.dart';
import './arayuz/restoransayfa.dart';
import './arayuz/sepetim.dart';
import './arayuz/restoran_sahibi.dart';
import './arayuz/restoranuyeol.dart';

void main() {
  runApp(new MaterialApp(initialRoute: "/", routes: {
    "/": (context) => (RestoranUyeOl()),
    
  }));
}

