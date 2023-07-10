import 'package:flutter/material.dart';
import 'package:saraswat_pl/pages/offer_logo.dart';
import 'package:saraswat_pl/pages/otp.dart';

class IncomeVerificationITR extends StatefulWidget {
  const IncomeVerificationITR({super.key});

  @override
  State<IncomeVerificationITR> createState() => _IncomeVerificationITRState();
}

class _IncomeVerificationITRState extends State<IncomeVerificationITR> {
  String? consent;
  bool? check1 = false;
  bool? check2 = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0),
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
                  height: 20.0,
                ),

                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "We have successfully fetched your bank account details.",
                    style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black87),
                  ),
                ),
                SizedBox(
                  height: 28.0,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Upload ITR for last 2 years",
                    style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black87),
                  ),
                ),
                SizedBox(
                  height: 28.0,
                ),

                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Click here to download ITR",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        // fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black87),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Latest 2 ITR from 3/4 PDF",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent),
                  ),
                ),
                SizedBox(
                  height: 24.0,
                ),

                Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 20.0,
                        width: 50.0,
                        color: Colors.grey[300],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "PDF1",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.attach_file,
                      color: Colors.grey,
                    ),
                  ],
                ),
                CheckboxListTile(
                  title: Text("I have verified the pdf"),
                  //checkbox positioned at right
                  value: check1,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      check1 = value;
                    });
                  },
                ),

                Row(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 20.0,
                        width: 50.0,
                        color: Colors.grey[300],
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            "PDF2",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Icon(
                      Icons.attach_file,
                      color: Colors.grey,
                    ),
                  ],
                ),

                CheckboxListTile(
                  title: Text("I have verified the pdf"),
                  //checkbox positioned at right
                  value: check2,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      check2 = value;
                    });
                  },
                ),

                SizedBox(
                  height: 40.0,
                ),
                // next
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
                            MaterialPageRoute(builder: (_) => OfferLogo())),
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
