import 'package:flutter/material.dart';
import 'package:untitled/Gocrypto/confirm_order.dart';



class selectcrypto extends StatelessWidget {
  const selectcrypto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Select Crypto",
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
          decoration: BoxDecoration(
          color: Colors.black,
            borderRadius: BorderRadius.circular(10),
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
                            "\$258278447",
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
                        "\$24273 ",
                        style: TextStyle(color: Colors.white70, fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Text(
                            "\$2878219",
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
                      MaterialPageRoute(builder: (context) => confirmation()));
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
                              "\$10,03%",
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
                      MaterialPageRoute(builder: (context) => confirmation()));
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
                      MaterialPageRoute(builder: (context) => confirmation()));
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
                      MaterialPageRoute(builder: (context) => confirmation()));
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
                      MaterialPageRoute(builder: (context) => confirmation()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                      Image.asset('image/bnb.png', height: 40,width: 40,)
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
                      MaterialPageRoute(builder: (context) => confirmation()));
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
                      MaterialPageRoute(builder: (context) => confirmation()));
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
                              "\$10,03",
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
    );
  }
}
