import 'package:saraswat_pl/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToOTP(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.otpRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 50.0,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30.0),
                      child: Text(
                        "Journey towards your dream home",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        "Basic Information",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  LinearProgressIndicator(
                    value: 0.7,
                    color: Colors.green, //<-- SEE HERE
                    backgroundColor: Colors.greenAccent, //<-- SEE HERE
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Enter Details",
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold)),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                      "Please enter your accurate information that matches your KYC documents"),
                  SizedBox(
                    height: 20.0,
                  ),

                  Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Your Name",
                          hintStyle: TextStyle(color: Colors.black26),
                          labelText: "Your Name",
                          filled: true,
                          fillColor: Colors.grey[300],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username cannot be empty";
                          }

                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        // obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Mobile Number",
                            labelText: "Mobile Number",
                            hintStyle: TextStyle(color: Colors.black26),
                            filled: true,
                            fillColor: Colors.grey[300],
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                            )),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Mobile Number cannot be empty";
                          } else if (value.length < 10) {
                            return "Please enter 10 digit mobile number";
                          }

                          return null;
                        },
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "*We will be sending an OTP to validate your details",
                          style: TextStyle(
                              color: Colors.black, fontStyle: FontStyle.italic),
                        ),
                      ),
                      SizedBox(
                        height: 160.0,
                      ),
                      Material(
                        color: Colors.red,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8),
                        child: InkWell(
                          onTap: () => moveToOTP(context),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: AnimatedContainer(
                              duration: Duration(seconds: 1),
                              width: changeButton ? 50 : 150,
                              height: 50,
                              alignment: Alignment.center,
                              child: changeButton
                                  ? Icon(
                                      Icons.done,
                                      color: Colors.white,
                                    )
                                  : Text(
                                      "Next",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // )
                ],
              ),
            ),
          ),
        ));
  }
}
