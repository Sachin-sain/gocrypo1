import 'package:flutter/material.dart';
import 'package:untitled/forgot/setup_face_id.dart';


class success extends StatelessWidget {
  const success({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset("image/verify.png", height: 150,width: 150,),
                ),

                SizedBox(
                  height: 40,
                ),
                Text(
                  "You' are verified!",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "You have been success fully verified",
                  style: TextStyle(color: Colors.white70, fontSize: 20),
                ),
                SizedBox(
                  height: 250,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => setup()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 100),
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(14),
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
          ),
        ));
  }
}
