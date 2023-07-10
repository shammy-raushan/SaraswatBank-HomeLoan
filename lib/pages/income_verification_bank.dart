import 'package:flutter/material.dart';
import 'package:saraswat_pl/pages/income_verification_itr.dart';
import 'package:saraswat_pl/pages/otp.dart';

class IncomeVerificationBank extends StatefulWidget {
  const IncomeVerificationBank({super.key});

  @override
  State<IncomeVerificationBank> createState() => _IncomeVerificationBankState();
}

class _IncomeVerificationBankState extends State<IncomeVerificationBank> {
  bool? check1 = true;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 48.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new Image.asset(
                      "assets/images/banner1.jpeg",
                      // height: 0.0,
                      width: 300.0,
                    ),

                    new Image.asset("assets/images/banner.jpeg",
                        // height: 140.0,
                        width: 70.0),

                    // Text("this is add"),
                  ],
                ),
                SizedBox(
                  height: 32.0,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Income Verification",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                new Image.asset("assets/images/bank.jpg",
                    // height: 420.0,
                    width: 470.0),
                SizedBox(
                  height: 60.0,
                ),
                Container(
                  height: 50.0,
                  width: 400.0,
                  color: Color.fromARGB(220, 82, 33, 243),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Accounts",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Axis Bank",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color.fromARGB(220, 82, 33, 243)),
                  ),
                ),
                CheckboxListTile(
                  title: Text("XX 8846"),
                  //checkbox positioned at right
                  value: check1,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      check1 = value;
                    });
                  },
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
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (_) => IncomeVerificationITR())),
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
      ),
    );
  }
}
