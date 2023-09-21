// ignore_for_file: file_names

import 'package:flutter/material.dart';
//import 'package:flutter_application_1/Calculator_Screen.dart';

class Mylogin extends StatefulWidget {
  const Mylogin({super.key});

  @override
  State<Mylogin> createState() => _MyloginState();
}

class _MyloginState extends State<Mylogin> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController reTypePasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: AssetImage("assets/images/login.jpg"), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 180, top: 200),
              child: Text(
                "Register",
                style: TextStyle(color: Colors.blue, fontSize: 33),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.5,
                  right: 35,
                  left: 35),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(Icons.arrow_back)),
                    MyTextField(
                      title: "Username",
                      controller: userNameController,
                      icon: const Icon(Icons.person),
                    ),
                    MySpacer(),
                    MyTextField(
                      title: "Email",
                      controller: emailController,
                      icon: const Icon(Icons.lock),
                    ),
                    MySpacer(),
                    MyTextField(
                      title: "Password",
                      controller: passwordController,
                      icon: const Icon(Icons.email),
                    ),
                    MySpacer(),
                    MyTextField(
                      title: "Re type Password",
                      controller: reTypePasswordController,
                      icon: const Icon(Icons.email),
                    ),
                    MySpacer(),
                    ElevatedButton(
                        onPressed: () {
                          /* Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CalculatorScreen(),
                            ),
                          );*/
                        },
                        child: Text("Login")),
                    ElevatedButton(onPressed: () {}, child: Text("Login")),
                    ElevatedButton(onPressed: () {}, child: Text("Login"))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final Icon icon;
  const MyTextField(
      {super.key,
      required this.title,
      required this.controller,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          hintText: title,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
          prefixIcon: icon),
    );
  }
}

class MySpacer extends StatelessWidget {
  const MySpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
    );
  }
}
