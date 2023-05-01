import 'package:flutter/material.dart';
import 'package:untitled/Screens/3.dart';

import '../main.dart';

class second extends StatelessWidget {
  const second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: Container(

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              Image.asset("image/screen2.png", height: 200,width: 200,),
                  Text("If you ' re on a budget or ",
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                  Text("simply looking",
                      style: TextStyle(color: Colors.white, fontSize: 30)),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Crytoassets are highly volatlile unregulated",
                    style: TextStyle(color: Colors.white70, fontSize: 20),
                  ),
                  Text("investment product ",
                      style: TextStyle(color: Colors.white70, fontSize: 20)),
                  SizedBox(
                    height: 300,
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => third()));
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
