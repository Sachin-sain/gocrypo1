import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import 'method_verification.dart';

class resetnum extends StatefulWidget {
  const resetnum({Key? key}) : super(key: key);

  @override
  State<resetnum> createState() => _resetnumState();
}

class _resetnumState extends State<resetnum> {
  @override
  final _formKey = GlobalKey<FormState>();
  String dropdownvalue = '+91';
  var items = [
    '+91',
    '+61',
    '+81',
    '+101',
    '+105',
  ];

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Container(
            height: 20,
            width: 20,
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 40),
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
             Image.asset("image/reset2.png", height: 250, width: 250,),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Reset password",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Enter an number address you use ",
                  style: TextStyle(color: Colors.white70, fontSize: 20),
                ),
                Text(
                  " sign in to",
                  style: TextStyle(color: Colors.white70, fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                Form(
                  key: _formKey,
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Number';
                      }
                      return null;
                    },
                    // keyboardType: TextInputType.number,
                    keyboardType: TextInputType.numberWithOptions(decimal: true),
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ], // Only number

                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        prefixIcon: DropdownButton(
                          style: TextStyle(color: Colors.black),
                          dropdownColor: Colors.black,
                          underline: Container(
                            color: Colors.black,
                          ),

                          // Initial Value
                          value: dropdownvalue,

                          // Down Arrow Icon
                          icon: const Icon(Icons.keyboard_arrow_down),

                          // Array list of items
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: TextStyle(color: Colors.white),
                              ),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(10.0))),
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate() ||
                        _formKey.currentState!.validate() == true) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const methodverify()));



                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          duration: const Duration(milliseconds: 300),
                          content: Text(
                            'Loading.....',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          backgroundColor: Colors.black,
                        ),
                      );
                    }

                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 20, right: 20, ),
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text(
                      "Continue",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
