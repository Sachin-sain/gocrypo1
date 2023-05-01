import 'package:flutter/material.dart';
import 'package:untitled/Gocrypto/success.dart';


class confirmation extends StatelessWidget {
  const confirmation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Confirmation",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back, color: Colors.white,)
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 10, right: 4, left: 4),
          child: Column(
            children: [
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                color: Colors.white12,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Image.asset("image/eth.png", height: 50,width: 50,),
                            Text(
                              "ETH",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "to",
                          style: TextStyle(color: Colors.white30, fontSize: 18),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                           Image.asset("image/dai.png", height: 50,width: 50,),
                            Text(
                              "DAI",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Amount",
                            style:
                                TextStyle(color: Colors.white12, fontSize: 18),
                          ),
                          Text(
                            "22878.12 DAI",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Free",
                            style:
                                TextStyle(color: Colors.white12, fontSize: 18),
                          ),
                          Text(
                            "0",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          Text(
                            "22878.12 DAI",
                            style: TextStyle(color: Colors.blue, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ListTile(
                leading: Icon(
                  Icons.lock,
                  color: Colors.white12,
                ),
                title: Wrap(
                  children: [
                    Text(
                      "Processed by Cryptoline every purchases secured by the ",
                      style: TextStyle(color: Colors.white70),
                    ),
                    Text(
                      "Privacy Policy",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 180,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => successorder()));
                },
                child: Container(
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text(
                    "Confirm Order",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
