// ignore_for_file: depend_on_referenced_packages, prefer_const_constructors, use_super_parameters, sort_child_properties_last

import 'package:flowaral/PAGES/home.dart';
import 'package:flowaral/PAGES/login.dart';
import 'package:flowaral/shared/cons.dart';
import 'package:flowaral/shared/const_textfield.dart';

import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 64,
                  ),
                  Mytextfield(
                    txtInputTypee: TextInputType.text,
                    pass: false,
                    hinttext: "Enter your username",
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  Mytextfield(
                    txtInputTypee: TextInputType.emailAddress,
                    pass: false,
                    hinttext: "Enter your email",
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  Mytextfield(
                    txtInputTypee: TextInputType.text,
                    pass: true,
                    hinttext: "Enter your password",
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  ElevatedButton(
                    onPressed: () {Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          ),
                        );},
                    child:  Text(
                    "Register",
                    style: TextStyle(
                        fontSize: 19,
                        color: Color.fromARGB(255, 255, 252, 252)),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(BTNgreen),
                      padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Do not have an account?",
                          style: TextStyle(fontSize: 18)),
                      TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()),
                            );
                          },
                          child: Text('sign in',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 18))),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
