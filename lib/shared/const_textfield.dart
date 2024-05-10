// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, use_super_parameters

import 'package:flutter/material.dart';

class Mytextfield extends StatelessWidget {
  final TextInputType txtInputTypee;
  final bool pass;
  final String hinttext;
  
 Mytextfield({
    Key? key,
    required this.txtInputTypee,
    required this.pass,
    required this.hinttext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: txtInputTypee,
        obscureText: pass,
        decoration: InputDecoration(
          hintText: hinttext,
          // To delete borders
          enabledBorder: OutlineInputBorder(
            borderSide: Divider.createBorderSide(context),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          // fillColor: Colors.red,
          filled: true,
          contentPadding: const EdgeInsets.all(8),
        ));
  }
}
