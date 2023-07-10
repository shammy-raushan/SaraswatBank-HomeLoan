import 'package:flutter/material.dart';
import 'package:saraswat_pl/pages/income.dart';
import 'package:saraswat_pl/pages/otp.dart';

class EmploymentDetails extends StatefulWidget {
  const EmploymentDetails({super.key});

  @override
  State<EmploymentDetails> createState() => _EmploymentDetailsState();
}

class _EmploymentDetailsState extends State<EmploymentDetails> {
  String? consent;
  String expMonths = '4';
  String expTotal = '4';

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 38.0),
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
                          "Employment Details",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 20.0,
                // ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Occupation",
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
                        title: Text("Salaried"),
                        value: "Salaried",
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
                        title: Text("Self employed"),
                        value: "Self employed",
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
                    "Company Name",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
                TextFormField(
                  decoration:
                      InputDecoration(hintText: "Enter your company name"),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Work Email",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
                TextFormField(
                  decoration:
                      InputDecoration(hintText: "Enter your work email"),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Designation",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
                TextFormField(
                  decoration:
                      InputDecoration(hintText: "Enter your Designation"),
                ),
                Divider(
                  color: Colors.grey,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Months in Current Occupation",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),

                DropdownButton<String>(
                  value: expMonths,
                  items: <String>[
                    '4',
                    '5',
                    '6',
                    '7',
                    '8',
                    '9',
                    '10',
                    '11',
                    '12'
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),

                  onChanged: (String? newValue) {
                    setState(() {
                      this.expMonths = newValue!;
                    });
                  },
                  // onChanged: (_) {},

                  hint: Text("Select from dropdown"),
                ),

                // TextFormField(
                //   decoration: InputDecoration(hintText: "Input"),
                // ),
                Divider(
                  color: Colors.grey,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Total Work Experience",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),

                DropdownButton<String>(
                  value: expTotal,
                  items: <String>[
                    '4',
                    '5',
                    '6',
                    '7',
                    '8',
                    '9',
                    '10',
                    '11',
                    '12'
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),

                  onChanged: (String? newValue) {
                    setState(() {
                      this.expTotal = newValue!;
                    });
                  },
                  // onChanged: (_) {},

                  hint: Text("Select from dropdown"),
                ),

                // TextFormField(
                //   decoration: InputDecoration(hintText: ""),
                // ),
                Divider(
                  color: Colors.grey,
                ),

                // SizedBox(
                //   height: 20.0,
                // ),
                // next button
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
                        onTap: () => Navigator.of(context)
                            .push(MaterialPageRoute(builder: (_) => Income())),
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
