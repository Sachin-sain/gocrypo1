import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Gocrypto/profile.dart';


import '../main.dart';
import 'bottom_exchange.dart';
import 'ltc_usd.dart';
import 'market.dart';
import 'notification.dart';

class Gocrypto extends StatelessWidget {
  const Gocrypto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Column(
            children: [
              Container(
                  margin: EdgeInsets.only(right: 140),
                  child: Text(
                    "Gocrypto",
                    style: TextStyle(color: Colors.white),
                  )),
              Text(
                "Building trust in the Crypto",
                style: TextStyle(color: Colors.white70),
              )
            ],
          ),
          backgroundColor: Colors.black,
          // title:Container(
          //   margin: EdgeInsets.only(right: 50),
          //   child: ListTile(
          //     title: Text("GoCrypto", style: TextStyle(color: Colors.white),),
          //     subtitle: Text("Building trust in the Crypto", style: TextStyle(color: Colors.white70),),
          //
          //   ),
          // ),
          leading: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => login()));
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.grey,
              )),
          actions: [
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => market()));
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => notification()));
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.notification_important,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 0, top: 20),
                height: 180,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14.0),
                  color: Colors.blue[900],
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 10, top: 20, right: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "My Portfolio",
                            style: TextStyle(color: Colors.white, fontSize: 21, fontWeight: FontWeight.w600),
                          ),
                       Image.asset("image/graph1.png",height: 30,width: 30,)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "34,010.00",
                            style: TextStyle(color: Colors.white, fontSize: 20, fontWeight:FontWeight.bold),
                          ),
                          Text(
                            "+2,5%",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Stack(children: [
                        Positioned(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14),
                                  ), // background
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => exchange()));
                                },
                                child: Container(
                                    alignment: Alignment.center,
                                    height: 40,
                                    width: 130,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      color: Colors.white,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Image.asset("image/deposit.png", height: 20,width: 20,)
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 18),
                                          child: Text(
                                            "Deposit",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18),
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => exchange()));
                                },
                                child: Container(
                                    height: 40,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15.0),
                                      color: Colors.white,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Image.asset("image/withraw.png", height: 20,width: 20,)
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 18),
                                          child: Text(
                                            "Withdraw",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 18),
                                          ),
                                        )
                                      ],
                                    )),
                              )
                            ],
                          ),
                        ),
                      ])
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Favorites",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => market()));
                            },
                            child: Text("See All ",
                                style: TextStyle(
                                    color: Colors.blue[900], fontSize: 18)))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ltcusd()));
                      },
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white12),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading:Image.asset("image/btc.png", ),
                                    title: Text(
                                      "BTC",
                                      style: TextStyle(color: Colors.white, fontSize: 22),
                                    ),
                                    subtitle: Text(
                                      "Bitcoin",
                                      style: TextStyle(color: Colors.white70, fontSize: 18),
                                    ),
                                  ),
                                  SizedBox(height: 15,),

                                  Center(
                                    child: Image.asset("image/g1.png", )
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "20,10",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      Text(
                                        "+0,2%",
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 18),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white10),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading:Image.asset("image/eth.png"),
                                    title: Text(
                                      "ETH",
                                      style: TextStyle(color: Colors.white, fontSize: 22),
                                    ),
                                    subtitle: Text(
                                      "Ethereum",
                                      style: TextStyle(color: Colors.white70, fontSize: 18),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Center(
                                    child: Image.asset("image/g2.png")
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "28,7",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      Text(
                                        "+0,25%",
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 18),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white10),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Image.asset("image/btc.png"),
                                    title: Text(
                                      "BTC",
                                      style: TextStyle(color: Colors.white, fontSize: 22),
                                    ),
                                    subtitle: Text(
                                      "Bitcoin",
                                      style: TextStyle(color: Colors.white70, fontSize: 18),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Center(
                                    child:Image.asset("image/g1.png")
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "2,88",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      Text(
                                        "+0,2%",
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 18),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white10),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Image.asset("image/eth.png"),
                                    title: Text(
                                      "ETH",
                                      style: TextStyle(color: Colors.white, fontSize: 22),
                                    ),
                                    subtitle: Text(
                                      "Ethereum",
                                      style: TextStyle(color: Colors.white70, fontSize: 18),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Center(
                                    child:Image.asset("image/g2.png")
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "28,7",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      Text(
                                        "+0,25%",
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 18),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white10),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Image.asset("image/btc.png"),
                                    title: Text(
                                      "BTC",
                                      style: TextStyle(color: Colors.white, fontSize: 22),
                                    ),
                                    subtitle: Text(
                                      "Bitcoin",
                                      style: TextStyle(color: Colors.white70, fontSize: 18),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Center(
                                    child:Image.asset("image/g1.png")
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "2,88",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      Text(
                                        "+0,2%",
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 18),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white10),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Image.asset("image/eth.png"),
                                    title: Text(
                                      "ETH",
                                      style: TextStyle(color: Colors.white, fontSize: 22),
                                    ),
                                    subtitle: Text(
                                      "Ethereum",
                                      style: TextStyle(color: Colors.white70, fontSize: 18),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Center(
                                    child: Image.asset("image/g2.png")
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "20,156",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      Text(
                                        "+1,56%",
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 18),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white10),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Image.asset("image/bnb.png"),
                                    title: Text(
                                      "BNB",
                                      style: TextStyle(color: Colors.white, fontSize: 22),
                                    ),
                                    subtitle: Text(
                                      "Binance",
                                      style: TextStyle(color: Colors.white70, fontSize: 18),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Center(
                                    child:Image.asset("image/g1.png")
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        "131,41",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      Text(
                                        "+2,02",
                                        style: TextStyle(
                                            color: Colors.green, fontSize: 18),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 230),
                      child: Text(
                        "My Portfolio",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ltcusd()));
                      },
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white10),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading:Image.asset("image/btc.png"),
                                    title: Text(
                                      "BTC/USD",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Portofolio",
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 16),
                                    ),
                                    subtitle: Text(
                                      "10,120",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    trailing: Text(
                                      "+0,5%",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white10),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Image.asset("image/eth.png"),
                                    title: Text(
                                      "ETH/USD",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Portofolio",
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 16),
                                    ),
                                    subtitle: Text(
                                      "20,788",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    trailing: Text(
                                      "+0,25%",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white10),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading:Image.asset("image/usd.png"),
                                    title: Text(
                                      "ETH/USD",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Portofolio",
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 16),
                                    ),
                                    subtitle: Text(
                                      "80,023",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    trailing: Text(
                                      "+0,10%",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white10),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Image.asset("image/btc.png"),
                                    title: Text(
                                      "BTC/USD",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Portofolio",
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 16),
                                    ),
                                    subtitle: Text(
                                      "21,5",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    trailing: Text(
                                      "+1,56%",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white10),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Image.asset("image/bnb.png"),
                                    title: Text(
                                      "BNB/USD",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Portofolio",
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 16),
                                    ),
                                    subtitle: Text(
                                      "11,46",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    trailing: Text(
                                      "+2,02%",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white10),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Image.asset("image/eth.png"),
                                    title: Text(
                                      "BTC/USD",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Portofolio",
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 16),
                                    ),
                                    subtitle: Text(
                                      "326,423",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    trailing: Text(
                                      "+2,87%",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0),
                                  color: Colors.white10),
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Image.asset("image/usd.png"),
                                    title: Text(
                                      "BTC/USD",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 25),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  ListTile(
                                    title: Text(
                                      "Portofolio",
                                      style: TextStyle(
                                          color: Colors.white70, fontSize: 16),
                                    ),
                                    subtitle: Text(
                                      "131,46",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    trailing: Text(
                                      "+2,02%",
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 18),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      margin: EdgeInsets.only(right: 250),
                      child: Text(
                        "Live Prices",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ltcusd()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                           Image.asset("image/eth.png", height: 40,width: 40,)
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Ethereum",
                              style: TextStyle(color: Colors.white),
                            ),
                            Container(
                                margin: EdgeInsets.only(right: 30),
                                child: Text(
                                  "ETH",
                                  style: TextStyle(color: Colors.white70),
                                )),
                          ],
                        ),
                        Image.asset("image/g1.png"),
                        Column(
                          children: [
                            Text(
                              "127,00",
                              style: TextStyle(color: Colors.white),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_drop_up,
                                  color: Colors.green,
                                ),
                                Text(
                                  "10,03%",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ltcusd()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Image.asset("image/bnb.png", height: 40,width: 40,)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 20),
                                child: Text(
                                  "Binance",
                                  style: TextStyle(color: Colors.white),
                                )),
                            Container(
                                margin: EdgeInsets.only(right: 35),
                                child: Text(
                                  "BNB",
                                  style: TextStyle(color: Colors.white70),
                                )),
                          ],
                        ),
                       Image.asset("image/g2.png"),
                        Column(
                          children: [
                            Text(
                              "525,64",
                              style: TextStyle(color: Colors.white),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_drop_up,
                                  color: Colors.green,
                                ),
                                Text(
                                  "2,87%",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ltcusd()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Image.asset("image/ltc.png", height: 40,width: 40,),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Litecoin",
                              style: TextStyle(color: Colors.white),
                            ),
                            Container(
                                margin: EdgeInsets.only(right: 30),
                                child: Text(
                                  "LTC",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        ),
                        Image.asset("image/g1.png"),
                        Column(
                          children: [
                            Text(
                              "36,3",
                              style: TextStyle(color: Colors.white),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_drop_up,
                                  color: Colors.green,
                                ),
                                Text(
                                  "20,99",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ltcusd()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                           Image.asset("image/xrp.png",height: 40,width: 40,)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 50),
                                child: Text(
                                  "XRP",
                                  style: TextStyle(color: Colors.white),
                                )),
                            Container(
                                margin: EdgeInsets.only(right: 50),
                                child: Text(
                                  "XRP",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        ),
                       Image.asset("image/g1.png"),
                        Column(
                          children: [
                            Text(
                              "36,210",
                              style: TextStyle(color: Colors.white),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_drop_up,
                                  color: Colors.green,
                                ),
                                Text(
                                  "2,87",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ltcusd()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                           Image.asset("image/bnb.png", height: 40,width: 40,)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 20),
                                child: Text(
                                  "Binance",
                                  style: TextStyle(color: Colors.white),
                                )),
                            Container(
                                margin: EdgeInsets.only(right: 35),
                                child: Text(
                                  "BNB",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        ),
                        Image.asset("image/g2.png"),
                        Column(
                          children: [
                            Text(
                              "2,644",
                              style: TextStyle(color: Colors.white),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_drop_up,
                                  color: Colors.green,
                                ),
                                Text(
                                  "7,857",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ltcusd()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Image.asset("image/xrp.png", height: 40,width: 40,)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 50),
                                child: Text(
                                  "XRP",
                                  style: TextStyle(color: Colors.white),
                                )),
                            Container(
                                margin: EdgeInsets.only(right: 50),
                                child: Text(
                                  "XRP",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        ),
                       Image.asset("image/g1.png"),
                        Column(
                          children: [
                            Text(
                              "36,243",
                              style: TextStyle(color: Colors.white),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_drop_up,
                                  color: Colors.green,
                                ),
                                Text(
                                  "1,42",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ltcusd()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Image.asset("image/bnb.png", height: 40,width: 40,)
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                                margin: EdgeInsets.only(right: 30),
                                child: Text(
                                  "Binance",
                                  style: TextStyle(color: Colors.white),
                                )),
                            Container(
                                margin: EdgeInsets.only(right: 50),
                                child: Text(
                                  "BNB",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        ),
                      Image.asset("image/g2.png"),
                        Column(
                          children: [
                            Text(
                              "127,00",
                              style: TextStyle(color: Colors.white),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_drop_up,
                                  color: Colors.green,
                                ),
                                Text(
                                  "10,03",
                                  style: TextStyle(color: Colors.green),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                  child: Image.asset("image/home.png", height: 30,width: 30,)
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




