import 'package:flutter/material.dart';
import 'package:untitled/forgot/verify_Account.dart';
class methodverify extends StatelessWidget {
  const methodverify({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Container(

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
        child: Container(
          margin: EdgeInsets.only(top: 10, left: 20),
          padding: EdgeInsets.only(right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Let's verify your identity", style: TextStyle(color: Colors.white, fontSize: 30),),
              SizedBox(height: 20,),
              Text("Chosse your documnet to verify your identity", style: TextStyle(color: Colors.white70, fontSize: 18),),
              SizedBox(height: 50,),
              Text("Mthod of Verification", style: TextStyle(color: Colors.white70, fontSize: 20),),
              SizedBox(height: 20,),

              SizedBox(height: 10,),
              Card(
                  color: Colors.white38,
                child: ListTile(
                  leading:Icon(Icons.alarm, color: Colors.white,),
                  title: Text("Passport",style: TextStyle(color: Colors.white, fontSize: 20),),
                  trailing: Icon(Icons.navigate_next, color: Colors.white70,size: 35,),
                )
              ),
              SizedBox(height: 10,),
              Card(
                  color: Colors.white38,
                  child: ListTile(
                    leading:Icon(Icons.star,color: Colors.white,),
                    title: Text("Identity Card",style: TextStyle(color: Colors.white, fontSize: 20),),
                    trailing: Icon(Icons.navigate_next, color: Colors.white70,size: 35,),
                  )
              ),
              SizedBox(height: 10,),
              Card(
                  color: Colors.white38,
                  child: ListTile(
                    leading:Icon(Icons.email,color: Colors.white,),
                    title: Text("Digital Document",style: TextStyle(color: Colors.white, fontSize: 20),),
                    trailing: Icon(Icons.navigate_next,color: Colors.white70,size: 35,),
                  )
              ),
              SizedBox(height: 30,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const verifyaccount()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20,right: 20,top: 200),

                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(child: Text("Continue", style: TextStyle(color: Colors.white,fontSize: 20),)),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
