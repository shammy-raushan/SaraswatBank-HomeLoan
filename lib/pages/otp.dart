import 'package:flutter/services.dart';
import 'package:saraswat_pl/pages/customer_info.dart';
import 'package:saraswat_pl/utils/routes.dart';
import 'package:flutter/material.dart';

class OTPValidation extends StatefulWidget {
  @override
  _OTPValidationState createState() => _OTPValidationState();
}

class _OTPValidationState extends State<OTPValidation> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToInfo(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.infoRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
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
                    "Home Loan",
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
                color: Colors.green,
                backgroundColor: Colors.greenAccent,
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Enter Details",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Enter OTP",
                  style: TextStyle(
                    fontSize: 24,
                    //  fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
// neww

                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      // onSaved: (pin2) {},
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: "0"),
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context).textTheme.headlineSmall,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      // onSaved: (pin2) {},
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: "0"),
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context).textTheme.headlineSmall,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      // onSaved: (pin2) {},
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: "0"),
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context).textTheme.headlineSmall,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 68,
                    width: 64,
                    child: TextFormField(
                      // onSaved: (pin2) {},
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(), hintText: "0"),
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                      },
                      style: Theme.of(context).textTheme.headlineSmall,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  "Resend OTP",
                ),
              ),
              SizedBox(
                height: 180.0,
              ),
              Container(
                width: 480,
                height: 40,
                color: Colors.red,
                child: Align(
                  alignment: Alignment.center,
                  child: InkWell(
                      customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => CustomerInformation())),
                      // customBorder: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(100),
                      // ),
                      child: Text(
                        "Next",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
