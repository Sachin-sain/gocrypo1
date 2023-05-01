import 'package:flutter/material.dart';
import 'package:untitled/Gocrypto/success.dart';


import '../forgot/success_verify.dart';

class order_preview extends StatelessWidget {
  const order_preview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Order Preview",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
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
        body: Container(
          margin: EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Balance",
                  style: TextStyle(color: Colors.white70, fontSize: 16),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "\$9,876.09",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Container(
                      height: 350,
                      width: 350,
                      child: Card(
                        color: Colors.white12,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                               Image.asset("image/btc.png", height: 40,width: 40,),
                                Container(
                                  margin: EdgeInsets.only(right: 60, top: 10),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Bitcoin",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(right: 30),
                                          child: Text(
                                            "BTC",
                                            style: TextStyle(
                                                color: Colors.white70,
                                                fontSize: 16),
                                          ))
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Column(
                                    children: [
                                      Text(
                                        "\$567.06",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                      Text(
                                        "1.7877BTC",
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 18),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Payment Method ",
                                    style: TextStyle(
                                        color: Colors.white70, fontSize: 18),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 10),
                                      child: Image.asset("image/visa.png", height: 50,width: 50,))
                                ],
                              ),
                            ),
                            Divider(
                              color: Colors.grey,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Purchase Price",
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 18),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(right: 80),
                                          child: Text(
                                            "Fee",
                                            style: TextStyle(
                                                color: Colors.white12,
                                                fontSize: 18),
                                          )),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Column(
                                    children: [
                                      Text(
                                        "\$168,00",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                      Text(
                                        "\$3006",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                              thickness: 2,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Total",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  Text(
                                    "\$298,06",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Icon(
                      Icons.lock,
                      color: Colors.white12,
                    ),
                    Text(
                      "Processed by Cryptoline every purchase ",
                      style: TextStyle(color: Colors.white70),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "secured by the ",
                      style: TextStyle(color: Colors.white70),
                    ),
                    Text(
                      "privacy policy",
                      style: TextStyle(color: Colors.blue[900]),
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
                      MaterialPageRoute(builder: (context) => successorder()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text(
                    "Confirm Order",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
