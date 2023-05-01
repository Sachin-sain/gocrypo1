import 'package:flutter/material.dart';

import '../forgot/gocrypto.dart';
import 'market.dart';

class successorder extends StatelessWidget {
  const successorder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, top: 50),
            child: Image.asset("image/verify2.png", height: 250,width: 250,),
          ),
          SizedBox(
            height: 49,
          ),
          Text(
            "Success!",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "22878.12  DAI",
            style: TextStyle(color: Colors.blue, fontSize: 18),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Has been exchange from ETH to DAI",
            style: TextStyle(color: Colors.white70, fontSize: 18),
          ),
          SizedBox(
            height: 200,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Gocrypto()));
            },
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 30),
              height: 60,
              decoration: BoxDecoration(
                color: Colors.blue[900],
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                  child: Text(
                "Done",
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
            ),
          )
        ],
      ),
    );
  }
}
