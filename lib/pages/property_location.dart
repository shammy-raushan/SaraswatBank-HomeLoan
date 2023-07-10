import 'package:flutter/material.dart';
import 'package:saraswat_pl/pages/employment.dart';
import 'package:saraswat_pl/pages/sample.dart';

class PropertLocation extends StatefulWidget {
  const PropertLocation({super.key});

  @override
  State<PropertLocation> createState() => _PropertLocationState();
}

class _PropertLocationState extends State<PropertLocation> {
  String? consent;
  String? like;
  String dropdownValue = 'Andheri';
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
                  height: 20.0,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Hi Amit, Let's get started!",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Property Location",
                    style: TextStyle(
                      fontSize: 22,
                      //  fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Have you found the property to purchase?",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 300,
                      ),
                      child: RadioListTile(
                        title: Text("Yes"),
                        value: "Yes",
                        groupValue: consent,
                        onChanged: (value) {
                          setState(() {
                            consent = value.toString();
                          });
                        },
                      ),
                    )),
                    Expanded(
                        child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 300,
                      ),
                      child: RadioListTile(
                        title: Text("No"),
                        value: "No",
                        groupValue: consent,
                        onChanged: (value) {
                          setState(() {
                            consent = value.toString();
                          });
                        },
                      ),
                    )),
                  ],
                ),
                Divider(
                  color: Colors.grey,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Would you like to select one from our list of verified properties?",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                        child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 300,
                      ),
                      child: RadioListTile(
                        title: Text("Yes"),
                        value: "Yes",
                        groupValue: like,
                        onChanged: (value) {
                          setState(() {
                            like = value.toString();
                          });
                        },
                      ),
                    )),
                    Expanded(
                        child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        maxWidth: 300,
                      ),
                      child: RadioListTile(
                        title: Text("No"),
                        value: "No",
                        groupValue: like,
                        onChanged: (value) {
                          setState(() {
                            like = value.toString();
                          });
                        },
                      ),
                    )),
                  ],
                ),
                Divider(
                  color: Colors.grey,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "List of Verified Properties",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
                DropdownButton<String>(
                  value: dropdownValue,
                  items: <String>[
                    'Andheri',
                    'Navi Mumbai',
                    'Andheri West',
                    'Ghatkopar'
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),

                  onChanged: (String? newValue) {
                    setState(() {
                      this.dropdownValue = newValue!;
                    });
                  },
                  // onChanged: (_) {},

                  hint: Text("Select from dropdown"),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Property Cost/Estimate",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "8000000/-",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Divider(
                  color: Colors.grey,
                ),
                SizedBox(
                  height: 20.0,
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
                                builder: (_) => EmploymentDetails())),
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
