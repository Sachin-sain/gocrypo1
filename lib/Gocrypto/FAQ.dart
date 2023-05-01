import 'package:flutter/material.dart';
import 'package:untitled/Gocrypto/profile.dart';


import 'FAQ_DATA.dart';
 // import 'package:getwidget/getwidget.dart';

class FAQ extends StatelessWidget {
  const FAQ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "FAQ",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          backgroundColor: Colors.black,
          leading: Container(
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => profile()));
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 30, right: 30, top: 30),
              child: TextField(
                obscureText: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    labelText: "Search topics or questions",
                    labelStyle: TextStyle(color: Colors.white70),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14.0),
                        borderSide: BorderSide(color: Colors.blue))),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FAQDATA()));
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.start,
                        color: Colors.blue[900],
                      ),
                      Text(
                        "Started",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FAQDATA()));
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.money_off,
                        color: Colors.blue[900],
                      ),
                      Text(
                        "How to invest",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FAQDATA()));
                  },
                  child: Column(
                    children: [
                      Icon(
                        Icons.payment,
                        color: Colors.blue[900],
                      ),
                      Text(
                        "Payment method",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Container(
                margin: EdgeInsets.only(left: 20),
                child: Text(
                  "Top Questions",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
            SizedBox(
              height: 50,
            ),
            // GFAccordion(
            //     titleChild: Text("How to Create a gocrypto account?", style: TextStyle(color: Colors.white),),
            //
            //     contentChild: Text("open the gocrypto app to get started and follow steps"),
            //     collapsedIcon: Icon(Icons.keyboard_arrow_up, color: Colors.white70,),
            //     expandedIcon: Icon(Icons.keyboard_arrow_down,color: Colors.white70 ),
            // ),
            SizedBox(height: 10,),
            // GFAccordion(
            //   titleChild: Text("How to add a payment method?", style: TextStyle(color: Colors.white),),
            //
            //   contentChild: Text("open the gocrypto app to get started and follow steps"),
            //   collapsedIcon: Icon(Icons.keyboard_arrow_up, color: Colors.white70,),
            //   expandedIcon: Icon(Icons.keyboard_arrow_down,color: Colors.white70 ),
            // ),
            SizedBox(height: 10,),
            // GFAccordion(
            //   titleChild: Text("How to buy stocks?", style: TextStyle(color: Colors.white),),
            //
            //   contentChild: Text("open the gocrypto app to get started and follow steps"),
            //   collapsedIcon: Icon(Icons.keyboard_arrow_up, color: Colors.white70,),
            //   expandedIcon: Icon(Icons.keyboard_arrow_down,color: Colors.white70 ),
            // ),
          ],
        ));
  }
}
