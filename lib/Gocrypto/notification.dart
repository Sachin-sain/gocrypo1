import 'package:flutter/material.dart';
import 'package:untitled/Gocrypto/profile.dart';
import 'package:untitled/Gocrypto/market.dart';


import 'market.dart';

class notification extends StatelessWidget {
  const notification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            "Notification",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          actions: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>market()));
              },
                child: Icon(Icons.search)),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
              },
                child: Icon(Icons.settings))
          ],
          leading: Container(
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
              Container(
                margin: EdgeInsets.only(left: 5, right: 5, top: 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.white10,
                  child: ListTile(
                   leading: Image.asset("image/offer.png", height: 40,width: 40,),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Offers",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("This offer only for you",
                            style: TextStyle(color: Colors.white70)),
                        Text("Today best offer",
                            style: TextStyle(color: Colors.white70)),
                        SizedBox(
                          height: 20,
                        ),
                        Text("0 minute ago",
                            style: TextStyle(color: Colors.white70))
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5, right: 5, top: 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.white10,
                  child: ListTile(
                    leading: Image.asset("image/paymentsuccess.png", height: 40,width: 40,),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Payment Sucessfull",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("This offer only for you",
                            style: TextStyle(color: Colors.white70)),
                        Text("Today best offer",
                            style: TextStyle(color: Colors.white70)),
                        SizedBox(
                          height: 20,
                        ),
                        Text("yesterday",
                            style: TextStyle(color: Colors.white70))
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 5, right: 5, top: 20),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.white10,
                  child: ListTile(
                    leading: Image.asset("image/paymentsuccess.png", height: 40,width: 40,),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Payment Sucessfull",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text("This offer only for you",
                            style: TextStyle(color: Colors.white70)),
                        Text("Today best offer",
                            style: TextStyle(color: Colors.white70)),
                        SizedBox(
                          height: 20,
                        ),
                        Text("12 Dec", style: TextStyle(color: Colors.white70))
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
