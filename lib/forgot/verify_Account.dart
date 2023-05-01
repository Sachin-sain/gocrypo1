import 'package:flutter/material.dart';


import '../sign_up/sign_up.dart';

class verifyaccount extends StatelessWidget {
  const verifyaccount({Key? key}) : super(key: key);

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
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Verify Account",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Take a photo of front of your identity Card",
                style: TextStyle(color: Colors.white70, fontSize: 18),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                  child: Image.asset("image/verify2.png",height: 250,width: 250,),
              ),
              SizedBox(
                height: 200,
              ),
              GestureDetector(
                onTap: () {

                },
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 70),
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
