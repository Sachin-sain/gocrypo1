import 'package:flutter/material.dart';
import 'package:untitled/Gocrypto/payment_method.dart';
import 'package:untitled/Gocrypto/profile.dart';


import '../forgot/gocrypto.dart';
import '../main.dart';
import 'bottom_exchange.dart';
import 'market.dart';

class sell extends StatelessWidget {
  const sell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Exchange",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          leading: Container(
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>login()));
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
            margin: EdgeInsets.only(left: 10, right: 10, top: 5),
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 400,
                  child: Card(
                    color: Colors.white12,
                    child: Container(
                      height: 90,
                      width: 300,
                      color: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Text(
                                "Buy",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context)=>sell()));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 170,
                              decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Text(
                                "Sell",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => market()));
                  },
                  child: Container(
                    color: Colors.white12,
                    height: 250,
                    width: 360,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20, left: 20),
                              child: Column(
                                children: [
                                  Text(
                                    "You Pay",
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 18),
                                  ),
                                  Text(
                                    "1,500.00",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20, right: 30),
                              child: Row(
                                children: [
                                  Image.asset("image/usd.png", height: 30,width: 30,),
                                  SizedBox(width: 5,),
                                  Text(
                                    "USD",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.white70,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Center(
                            child: Icon(
                          Icons.unfold_less_outlined,
                          color: Colors.blue[900],
                          size: 30,
                        )),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20, left: 20),
                              child: Column(
                                children: [
                                  Text(
                                    "You Recieve",
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 18),
                                  ),
                                  Text(
                                    "0.5384",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20, right: 30),
                              child: Row(
                                children: [
                                 Image.asset("image/btc.png", height: 30,width: 30,),
                                  SizedBox(width: 5,),
                                  Text(
                                    "BTC",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down,
                                    color: Colors.white70,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "1 USD=0.000023 USD",
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 18),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Container(
                      height: 60,
                      width: 220,
                      color: Colors.white12,
                      child: ListTile(
                        leading: Image.asset("image/dollar.png", height: 30,width: 30,),
                        title: Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 30, top: 5),
                                child: Text(
                                  "Exchange free",
                                  style: TextStyle(color: Colors.white70),
                                )),
                            Container(
                                margin: EdgeInsets.only(right: 80, top: 0),
                                child: Text(
                                  "0.08%",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 60,
                      width: 125,
                      color: Colors.white12,
                      alignment: Alignment.center,
                      child: Text(
                        "\$32",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Click here for",
                      style: TextStyle(color: Colors.white70, fontSize: 18),
                    ),
                    Text(
                      "Terms & Conditions",
                      style: TextStyle(color: Colors.blue, fontSize: 18),
                    ),
                  ],
                ),
                Center(
                  child: Text(
                    "For this transaction fee will be taken",
                    style: TextStyle(color: Colors.white70, fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => paymentmethod()));
                  },
                  child: Container(
                    height: 60,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Text(
                      "Continue",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                  child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Gocrypto()));
                      },


                      child: Image.asset("image/home.png", height: 30,width: 30,)

                  )

              ),
              Expanded(
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white54,
                    size: 30,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => market()));
                  },
                ),
              ),
              Expanded(

                  child:GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>exchange()));
                      },
                      child: Image.asset("image/exchange.png", height: 30,width: 30,))

              ),
              Expanded(
                child: GestureDetector(
                  child: Image.asset("image/profile.png", height: 30,width: 30,),

                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => profile()));
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
