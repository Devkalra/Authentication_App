import 'package:authentication_app/Components/Tile.dart';
import 'package:authentication_app/Components/my_button.dart';
import 'package:flutter/material.dart';

import '../Components/Tile2.dart';
import '../Components/my_textfield.dart';

class LoginPage extends StatefulWidget {
  final Function()? onTap;
   const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // User Signin Method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //First_Image
              const SizedBox(height: 30),
              Image.asset(
                'lib/Image/Image1.jpg',
                height: 100,
              ),
              const SizedBox(height: 10),
              //TEXT
              const Text(
                "Let's get you in",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              //Sign in field1 Google
              const Tile(
                imagePath: "lib/Image/Image2.png",
              ),
              const SizedBox(height: 20),
              // //Sign in field2 facebook
              const Tile2(
                imagePath: "lib/Image/Image3.png",
              ),
              //Breaker
              const SizedBox(height: 20),
              Row(
                children: const [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      "Or",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Expanded(
                      child: Divider(
                    thickness: 0.5,
                    color: Colors.grey,
                  ))
                ],
              ),
              const SizedBox(height: 20),
              //Email Button
              Mybutton(
                onTap: signUserIn,
              ),
              const SizedBox(height: 20),
              //Signup button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?",
                      style: TextStyle(
                        color: Colors.white,
                      )),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}

// // ***
// MyTextfield(
// controller: usernameController,
// hintText: 'Username',
// obscureText: false,
// ),
// const SizedBox(height: 15),
// MyTextfield(
// controller: passwordController,
// hintText: 'Username',
// obscureText: true,
// ),
// const SizedBox(height: 15),
// // ****
