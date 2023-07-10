import 'package:flutter/material.dart';
import 'package:saraswat_pl/pages/income_verification_bank.dart';

class Income extends StatefulWidget {
  const Income({super.key});

  @override
  State<Income> createState() => _IncomeState();
}

class _IncomeState extends State<Income> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
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
                  height: 60.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Select one of the below options to verify your income",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent),
                  ),
                ),
                // next
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  width: 480,
                  height: 50,
                  color: Colors.redAccent,
                  child: Align(
                    alignment: Alignment.center,
                    child: InkWell(
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (_) => IncomeVerificationBank())),
                        // customBorder: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(100),
                        // ),
                        child: Text(
                          "Account Aggregator(Recommended)",
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        )),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Container(
                  width: 480,
                  height: 50,
                  color: Colors.redAccent,
                  child: Align(
                    alignment: Alignment.center,
                    child: InkWell(
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (_) => IncomeVerificationBank())),
                        // customBorder: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(100),
                        // ),
                        child: Text(
                          "Internet Banking",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        )),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),
                Container(
                  width: 480,
                  height: 50,
                  color: Colors.redAccent,
                  child: Align(
                    alignment: Alignment.center,
                    child: InkWell(
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60),
                        ),
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (_) => IncomeVerificationBank())),
                        // customBorder: RoundedRectangleBorder(
                        //   borderRadius: BorderRadius.circular(100),
                        // ),
                        child: Text(
                          "Upload latest 6 months bank e-statements PDF",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        )),
                  ),
                ),
                SizedBox(
                  height: 40.0,
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
                                builder: (_) => IncomeVerificationBank())),
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
