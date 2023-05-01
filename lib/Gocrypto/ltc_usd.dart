import 'package:flutter/material.dart';
import 'package:untitled/Gocrypto/selectcrypto.dart';


class ltcusd extends StatelessWidget {
  const ltcusd({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "LTC/USD",
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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 20, left: 10, right: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset("image/ltc.png", height: 40,width: 40,),
                  Container(
                    margin: EdgeInsets.only(right: 150),
                    child: Column(
                      children: [
                        Text(
                          "Litcoin/LTC",
                          style: TextStyle(color: Colors.white70, fontSize: 16),
                        ),
                        Text(
                          "\$34,970.98",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Chip(
                    backgroundColor: Colors.green,
                    label: Container(
                      alignment: Alignment.center,
                      width: 50,
                      height: 20,
                      child: Text('+10%'),
                    ),
                    elevation: 60,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: Container(
                      height: 30,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        "1D",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 30,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        "1w",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 30,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        "1W",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 30,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        "1M",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 30,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        "1Y",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 30,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        "5Y",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 200,
                width: 200,
                child: Center(
                    child: Text(
                  "Here is the placed graph",
                  style: TextStyle(color: Colors.red, fontSize: 30),
                )),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.",
                    style: TextStyle(
                        color: Colors.white70, fontSize: 18, wordSpacing: 1),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => selectcrypto()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 160,
                      child: Text(
                        "Sell",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(14.0)),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => selectcrypto()));
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 160,
                      child: Text(
                        "Buy",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(14.0)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
