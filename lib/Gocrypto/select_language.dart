import 'package:flutter/material.dart';
import 'package:untitled/Gocrypto/profile.dart';


class selectlanguage extends StatelessWidget {
  const selectlanguage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Select Language",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.black,
        leading: Container(
          alignment: Alignment.center,
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => profile()));
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
              margin: EdgeInsets.only(left: 30, right: 30, top: 30),
              child: TextField(
                obscureText: true,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    labelText: "Search Language",
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
              height: 20,
            ),
            ListTile(
              leading: Image.asset("image/english.png", height: 30,width: 30,),
              title: Text(
                "English",
                style: TextStyle(color: Colors.white70, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading:Image.asset("image/italy.png", height: 30,width: 30,),
              title: Text(
                "Italy",
                style: TextStyle(color: Colors.white70, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Image.asset("image/japan.png", height: 30,width: 30,),
              title: Text(
                "Japanese",
                style: TextStyle(color: Colors.white70, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Image.asset("image/indonesia.png", height: 30,width: 30,),
              title: Text(
                "Indonesian",
                style: TextStyle(color: Colors.white70, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Image.asset("image/russia.png", height: 30,width: 30,),
              title: Text(
                "Russian",
                style: TextStyle(color: Colors.white70, fontSize: 20),
              ),
            ),
            SizedBox(
              height: 150,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => profile()));
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(10.0)),
                child: Text(
                  "Save Changes",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
