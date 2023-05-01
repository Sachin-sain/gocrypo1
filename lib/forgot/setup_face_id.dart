import 'package:flutter/material.dart';

import 'finger_print.dart';
class setup extends StatelessWidget {
  const setup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Container(
          padding: EdgeInsets.only(left: 20,right: 20),
        height: 20,
        width: 20,
        color: Colors.black,
        alignment: Alignment.center,
        child: InkWell(
        onTap: (){
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
            Text("Setup Face ID", style: TextStyle(color: Colors.white, fontSize: 30),),
            SizedBox(height: 20,),

        Text("Unlock Cryptoline with your face ID", style: TextStyle(color: Colors.white70, fontSize: 18),),

            Text("quick and secured", style: TextStyle(color: Colors.white70, fontSize: 18),),
            SizedBox(height: 80,),

            Image.asset("image/faceid.png", ),
            SizedBox(height: 260,),

            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>finger()));
              },
              child: Container(
                margin: EdgeInsets.only(left: 20,right: 20),

                height: 60,
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: Text("Scan my face", style: TextStyle(color: Colors.white, fontSize: 20),)),
              ),
            )

          ],
        ),
      ),
    );
  }
}
