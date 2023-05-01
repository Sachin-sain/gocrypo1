import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/forgot/reset_passwordwithemail.dart';


class createpin extends StatefulWidget {
  const createpin({Key? key}) : super(key: key);

  @override
  State<createpin> createState() => _createpinState();
}

class _createpinState extends State<createpin> {
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
          margin: EdgeInsets.only(
            top: 20,
          ),
          child: Column(
            children: [
              Text(
                "Create New Pin",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "Adding a pin number will make your",
                  style: TextStyle(color: Colors.white70, fontSize: 20),
                ),
              ),
              Center(
                child: Text(
                  "investment secure",
                  style: TextStyle(color: Colors.white70, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Form(
                key: _formKey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      child: TextFormField(
                        style: TextStyle(fontSize: 30, ),
                        cursorHeight: 0,
                        cursorWidth: 0,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                          return null;
                        },

                        decoration: InputDecoration(

                          border: InputBorder.none,
                        ),
                        // keyboardType: TextInputType.number,
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ], // Only nu
                      ),
                      decoration: BoxDecoration(

                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: Colors.grey,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      child: TextFormField(
                        style: TextStyle(fontSize: 30, ),
                        cursorHeight: 0,
                        cursorWidth: 0,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                        // keyboardType: TextInputType.number,
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ], // Only nu
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: Colors.grey,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      child: TextFormField(
                        style: TextStyle(fontSize: 30, ),
                        cursorHeight: 0,
                        cursorWidth: 0,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                        // keyboardType: TextInputType.number,
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ], // Only nu
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: Colors.grey,
                          )),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      child: TextFormField(
                        style: TextStyle(fontSize: 30, ),
                        cursorHeight: 0,
                        cursorWidth: 0,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return '';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                        // keyboardType: TextInputType.number,
                        keyboardType:
                            TextInputType.numberWithOptions(decimal: true),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ], // Only nu
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(
                            color: Colors.grey,
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 400,
              ),
              GestureDetector(
                onTap: () {
                  if (_formKey.currentState!.validate() ||
                      _formKey.currentState!.validate() == true) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => resetpassword(fromlogin: true, emailid: '',)));


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
                  margin: EdgeInsets.only(left: 20, right: 20, top: 4),
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Text(
                    "Continue",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
