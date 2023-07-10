import 'package:flutter/material.dart';
import 'package:saraswat_pl/pages/co_applicant_details.dart';

class AddCoApplicant extends StatefulWidget {
  const AddCoApplicant({super.key});

  @override
  State<AddCoApplicant> createState() => _AddCoApplicantState();
}

class _AddCoApplicantState extends State<AddCoApplicant> {
  String? consent;
  String? like;
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
                          "Add co applicant",
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
                    "Are you a co-owner of the property?",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
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
                SizedBox(
                  height: 60.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Do you wish to add a co-applicant?",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
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
                SizedBox(
                  height: 100.0,
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
                            MaterialPageRoute(
                                builder: (_) => CoApplicantDetails())),
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
