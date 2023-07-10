import 'package:flutter/material.dart';
import 'package:saraswat_pl/pages/final_offer.dart';

class CoApplicantDetails extends StatefulWidget {
  const CoApplicantDetails({super.key});

  @override
  State<CoApplicantDetails> createState() => _CoApplicantDetailsState();
}

class _CoApplicantDetailsState extends State<CoApplicantDetails> {
  String? consent;
  String relation = 'wife';
  String? financial;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.only(top: 36.0),
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
                          "Co-Applicant Details",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Name",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: "Full Name"),
                ),
                Divider(
                  color: Colors.grey,
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Phone",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter co-applicant Mobile Number"),
                ),
                Divider(
                  color: Colors.grey,
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Email",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),
                TextFormField(
                  decoration:
                      InputDecoration(hintText: "Enter co-applicant email"),
                ),
                Divider(
                  color: Colors.grey,
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Relationship with Co-applicant",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.red),
                  ),
                ),

                DropdownButton<String>(
                  value: relation,
                  items: <String>[
                    'wife',
                    'husband',
                    'father',
                    'mother',
                    'brother',
                    'sister',
                  ].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),

                  onChanged: (String? newValue) {
                    setState(() {
                      this.relation = newValue!;
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
                    "Is co-applicant a financial co-applicant?",
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

                // TextFormField(
                //   decoration: InputDecoration(hintText: ""),
                // ),
                Divider(
                  color: Colors.grey,
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Will co-applicant be the co-owner of the property?",
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
                        groupValue: financial,
                        onChanged: (value) {
                          setState(() {
                            financial = value.toString();
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
                        groupValue: financial,
                        onChanged: (value) {
                          setState(() {
                            financial = value.toString();
                          });
                        },
                      ),
                    )),
                  ],
                ),

                // TextFormField(
                //   decoration: InputDecoration(hintText: ""),
                // ),
                Divider(
                  color: Colors.grey,
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
                            MaterialPageRoute(builder: (_) => FinalOffer())),
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
