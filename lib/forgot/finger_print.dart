import 'package:flutter/material.dart';


import 'create_pin.dart';

class finger extends StatelessWidget {
  const finger({Key? key}) : super(key: key);

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
        child: Column(
          children: [
            Text(
              "Fingerprint",
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Unlock Cryptoline with your Fingerprint ",
              style: TextStyle(color: Colors.white70, fontSize: 20),
            ),
            Text("quick and secured", style: TextStyle(fontSize: 20, color: Colors.white70),),
            SizedBox(
              height: 100,
            ),
            Image.asset("image/fingerprint.png", height: 200,width: 200,),
            SizedBox(height: 100),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => createpin()));
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 120),
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text(
                  "Setup Fingerprint",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
