import 'package:flutter/material.dart';


import '../Gocrypto/Gocrypto.dart';

class terms extends StatefulWidget {
  @override
  State<terms> createState() => _termsState();
}

class _termsState extends State<terms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "Terms of Service",
          style: TextStyle(color: Colors.white70, fontSize: 25),
        ),
        leading: Container(
          padding: EdgeInsets.only(left: 2),
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
          margin: EdgeInsets.only(top: 25, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Last update on August 2021",
                style: TextStyle(color: Colors.white70, fontSize: 20),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Terms ",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Lorem ipsum dolor sit amet. Ut illum eveniet ut dolore repellendus qui sequi ratione. Eum corrupti possimus quo illum quod quo harum quia. Ea expedita assumenda et enim beatae est asperiores rerum. Et harum velit in dolores vero ad saepe eveniet sed dolorem iste.In excepturi officia qui deleniti perspiciatis non quas consequatur ut voluptas illo vel dolores ullam non ullam voluptates eos dolor ipsum. Ut mollitia doloremque a galisum beatae ut possimus consequatur aut error vero qui consequuntur reprehenderit. Qui incidunt",
                style: TextStyle(
                    color: Colors.white70, fontSize: 18, wordSpacing: 2),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Use License",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Lorem ipsum dolor sit amet. Ut illum eveniet ut dolore repellendus qui sequi ratione. Eum corrupti possimus quo illum quod quo harum quia. Ea expedita assumenda et enim beatae est asperiores rerum. Et harum velit in dolores vero ad saepe eveniet sed dolorem iste. Eum corrupti possimus quo illum quod quo harum quia. Ea expedita assumenda et enim beatae est asperiores rerum. Et harum velit in dolores vero ad saepe eveniet sed dolorem iste.",
                style: TextStyle(
                    color: Colors.white70, fontSize: 18, wordSpacing: 1),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 40,
                        width: 150,
                        alignment: Alignment.center,
                        child: Text(
                          "Declined",
                          style:
                              TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Gocrypto(),
                            ));
                      },
                      child: Container(
                        height: 40,
                        width: 150,
                        alignment: Alignment.center,
                        child: Text(
                          "Accept",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue[900],
                          border: Border.all(color: Colors.white70),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
