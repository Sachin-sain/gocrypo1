import 'package:flutter/material.dart';
import 'package:untitled/sign_up/sign_up.dart';

class third extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.only( left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("image/screen3.png", height: 300,width: 300,),
                  Text("Best App to Buy  ",
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                  Text("Cryptocurrency",
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Track more than 100+ crypto coins under our ",
                    style: TextStyle(color: Colors.white70, fontSize: 18),
                  ),
                  Text("user-friendly,safe and secure platform ",
                      style: TextStyle(color: Colors.white70, fontSize: 20)),
                  SizedBox(
                    height: 200,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => sign_up()));
                    },
                    child: Container(
                      child: Text(
                        "Get Started ",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      height: 50,
                      width: 350,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            color: Colors.blueAccent,
                          )),
                    ),
                  ),
                ],
              ))),
    );
  }
}
