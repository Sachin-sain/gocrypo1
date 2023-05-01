import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/forgot/resetpasswordwithnumber.dart';


class resetpassword extends StatefulWidget {




  late String emailid;
  late bool fromlogin;

  resetpassword({required this.emailid,required this.fromlogin});
  @override
  State<resetpassword> createState() => _resetpasswordState();
}

class _resetpasswordState extends State<resetpassword> {
  final _formKey = GlobalKey<FormState>();
  var value=false;

  @override
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

            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              children: [
                Image.asset("image/reset1.png", height: 250,width: 250,),
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
                  "Enter an email address you use ",
                  style: TextStyle(color: Colors.white70, fontSize: 20),
                ),
                Text(
                  "sign in to",
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
                        return 'Please enter Email';
                      }
                      else if(!value.contains("@")){
                        return "please enter valid email";

                      }
                    },
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        labelText: "Email address",
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Color(0xFF0D47A1),
                            ))),
                  ),
                ),
                SizedBox(
                  height: 200,
                ),
                GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate() ||
                        _formKey.currentState!.validate() == true) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const resetnum()));


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
                    padding: EdgeInsets.only(left: 40, right: 40),
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
        ));
  }
}
