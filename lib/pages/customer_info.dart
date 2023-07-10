import 'package:flutter/material.dart';
import 'package:saraswat_pl/pages/address.dart';
import 'package:saraswat_pl/pages/myAppBar.dart';

class CustomerInformation extends StatefulWidget {
  const CustomerInformation({super.key});

  @override
  State<CustomerInformation> createState() => _CustomerInformationState();
}

class _CustomerInformationState extends State<CustomerInformation> {
  bool? check1 = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Form(
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
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
                height: 12.0,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Welcome Amit",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
              ),

              Align(
                alignment: Alignment.topLeft,
                child: Text("We have fetched below records from our data"),
              ),

              SizedBox(
                height: 20.0,
              ),

              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Name",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
                      "Amit Kumar",
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
                  "PAN",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
                      "AAAAA0000A",
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
                  "Mother's Name",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
                      "Rita Ramesh",
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
                  "Father's Name",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
                      "Ramesh Kumar",
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
                  "DOB",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
                      "01/01/1992",
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
                  "Gender",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
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
                      "Male",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
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
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => CommunicationAddress())),
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

              // Align(
              //   alignment: Alignment.topLeft,
              //   child: Row(
              //     children: [
              //           child: Text(
              //               "We have fetched below details from our records"),
              //           // child: Text("name")

              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
