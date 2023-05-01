import 'package:flutter/material.dart';
import 'package:untitled/Gocrypto/profile.dart';

import '../forgot/gocrypto.dart';
import 'bottom_exchange.dart';
import 'ltc_usd.dart';
import 'notification.dart';

class market extends StatelessWidget {
  const market({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Market",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: InkWell(
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
                  ),
                ),
              ],
            )
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
          child: Container(
            margin: EdgeInsets.only(left: 20, right: 20, top: 15),
            child: Column(
              children: [
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      labelText: "Search company stocks...",
                      labelStyle: TextStyle(color: Colors.white70),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.blue),
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.baseline,
                      children: [
                        Text(
                          "Market Cap",
                          style: TextStyle(color: Colors.white70, fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            margin: EdgeInsets.only(right: 50),
                            child: Text(
                              "\$2272",
                              style: TextStyle(color: Colors.white),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            margin: EdgeInsets.only(right: 50),
                            child: Text(
                              "+6,15%",
                              style: TextStyle(color: Colors.green),
                            ))
                      ],
                    ),
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "24 Volume",
                          style: TextStyle(color: Colors.white70, fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              "\$2192246",
                              style: TextStyle(color: Colors.white),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              "+1,15%",
                              style: TextStyle(color: Colors.green),
                            ))
                      ],
                    ),
                    Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "BTC Dominance",
                          style: TextStyle(color: Colors.white70, fontSize: 16),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              "60%",
                              style: TextStyle(color: Colors.white),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                            margin: EdgeInsets.only(right: 20),
                            child: Text(
                              "+0,45%",
                              style: TextStyle(color: Colors.green),
                            ))
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
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
                          Image.asset(
                            "image/eth.png",
                            height: 40,
                            width: 40,
                          )
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
                            "\$127,00",
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
                            "\$525,64",
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
                          Image.asset("image/ltc.png", height: 40,width: 40,)
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
                            "\$36,3",
                            style: TextStyle(color: Colors.white),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_drop_up,
                                color: Colors.green,
                              ),
                              Text(
                                "\$20,99",
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
                      Image.asset("image/g2.png"),
                      Column(
                        children: [
                          Text(
                            "\$36,210",
                            style: TextStyle(color: Colors.white),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_drop_up,
                                color: Colors.green,
                              ),
                              Text(
                                "\$2,87",
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
                     Image.asset("image/g1.png"),
                      Column(
                        children: [
                          Text(
                            "\$2,644",
                            style: TextStyle(color: Colors.white),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_drop_up,
                                color: Colors.green,
                              ),
                              Text(
                                "\$7,857",
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
                     Image.asset("image/g2.png"),
                      Column(
                        children: [
                          Text(
                            "\$36,243",
                            style: TextStyle(color: Colors.white),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_drop_up,
                                color: Colors.green,
                              ),
                              Text(
                                "\$1,42",
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
                     Image.asset("image/g1.png"),
                      Column(
                        children: [
                          Text(
                            "\$127,00",
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
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Gocrypto()));
                      },
                      child: Image.asset(
                        "image/home.png",
                        height: 30,
                        width: 30,
                      ))),
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
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => exchange()));
                      },
                      child: Image.asset(
                        "image/exchange.png",
                        height: 30,
                        width: 30,
                      ))),
              Expanded(
                child: GestureDetector(
                  child: Image.asset(
                    "image/profile.png",
                    height: 30,
                    width: 30,
                  ),
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
