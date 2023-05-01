import 'package:flutter/material.dart';
import 'package:untitled/main.dart';

import '2.dart';

class First extends StatelessWidget {
  const First({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Image.asset("image/screen1.png"),
                  Text("However, the main issue ",
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                  Text("we havet",
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Next up we have Coinbase",
                    style: TextStyle(color: Colors.white70, fontSize: 20),
                  ),
                  Text("which is potentialy one",
                      style: TextStyle(color: Colors.white70, fontSize: 20)),
                  SizedBox(
                    height: 150,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => login()));
                        },
                        child: Container(
                          child: Text(
                            "Skip ",
                            style: TextStyle(
                                color: Colors.white, fontSize: 20),
                          ),
                          height: 50,
                          width: 180,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              border: Border.all(
                                color: Colors.blueAccent,
                              )),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => second()));
                        },
                        child: Container(
                          child: Text(
                            "Next ",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          height: 50,
                          width: 180,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.blueAccent,
                              border: Border.all(
                                color: Colors.blueAccent,
                              )),
                        ),
                      ),
                    ],
                  )
                ],
              ))),
    );
  }
}
