// ignore_for_file: use_super_parameters, unused_import

import 'package:flowaral/PAGES/checkout.dart';
import 'package:flowaral/PAGES/details.dart';
import 'package:flowaral/PAGES/home.dart';
import 'package:flowaral/PAGES/login.dart';
import 'package:flowaral/PAGES/register.dart';
import 'package:flowaral/provider/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MyApp());
}
 
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(    create: (context) {return Cart();},
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: true),
        // ignore: prefer_const_constructors
        home:Login()
      ),
    );
  }
  
}