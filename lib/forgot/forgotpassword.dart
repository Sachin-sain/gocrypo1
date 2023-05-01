import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/forgot/verification.dart';


class forgot extends StatefulWidget {


  @override
  State<forgot> createState() => _forgotState();
}

class _forgotState extends State<forgot> {
  String dropdownvalue = '+91';
  var items = [
    '+91',
    '+61',
    '+81',
    '+101',
    '+105',
  ];
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Container(
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
            margin: EdgeInsets.only(top: 10, left: 30),
            padding: EdgeInsets.only(right: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Set up 2-step verification ",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Enter your phone number so we can send you the verification code",
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
              SizedBox(
                height: 10,
              ),
              Form(
                key: _formKey,
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter Verification number';
                    }
                   else if(!value.contains("0-9",));
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
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          )),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide(color: Colors.blue))),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  if (_formKey.currentState!.validate() ||
                      _formKey.currentState!.validate() == true) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => verification()));


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
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Center(
                      child: Text(
                    "Continue",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  )),
                ),
              )
            ])),
      ),
    );
  }
}
