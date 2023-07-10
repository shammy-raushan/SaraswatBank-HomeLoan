import 'package:flutter/material.dart';
import 'package:saraswat_pl/pages/myAppBar.dart';
import 'package:saraswat_pl/pages/property_location.dart';

class CommunicationAddress extends StatefulWidget {
  const CommunicationAddress({super.key});

  @override
  State<CommunicationAddress> createState() => _CommunicationAddressState();
}

class _CommunicationAddressState extends State<CommunicationAddress> {
  bool? check1 = false;
  bool? check2 = false;
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
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 2.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Communication details",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Please confirm your Address",
                    style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Permanent Address",
                    style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Container(
                  height: 30.0,
                  width: 400.0,
                  color: Colors.grey[400],
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "House no 123",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 20.0,
                  width: 400.0,
                  color: Colors.grey[400],
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Sector 10",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 30.0,
                  width: 400.0,
                  color: Colors.grey[400],
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Vasant Vihar,Delhi,110011",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Communication Address",
                    style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 4.0,
                ),
                Container(
                  height: 30.0,
                  width: 400.0,
                  color: Colors.grey[400],
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "House no 123",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 20.0,
                  width: 400.0,
                  color: Colors.grey[400],
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Sector 10",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 30.0,
                  width: 400.0,
                  color: Colors.grey[400],
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "Vasant Vihar,Delhi,110011",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Email Address",
                    style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 2.0,
                ),
                Container(
                  height: 30.0,
                  width: 400.0,
                  color: Colors.grey[400],
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        "helloamitxx@gmail.com",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
                CheckboxListTile(
                  title: Text("I agree my details are correct"),
                  //checkbox positioned at right
                  value: check1,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      check1 = value;
                    });
                  },
                ),
                CheckboxListTile(
                  title: Text(
                      "I agree to the Terms and Conditions and Privacy Policy,and give my consent to Saraswat Bank as the lender to collect,store and verify and credit report from credit bureaus and KYC details(from CERSA) for processing loan application "),
                  //checkbox positioned at right
                  value: check2,
                  controlAffinity: ListTileControlAffinity.leading,
                  onChanged: (bool? value) {
                    setState(() {
                      check2 = value;
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
                                builder: (_) => PropertLocation())),
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
