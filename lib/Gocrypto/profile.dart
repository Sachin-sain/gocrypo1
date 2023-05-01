import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Gocrypto/payment_method.dart';
import 'package:untitled/Gocrypto/select_language.dart';
import 'package:untitled/Gocrypto/FAQ.dart';
import 'package:untitled/Gocrypto/my_account.dart';
import '../forgot/gocrypto.dart';
import '../main.dart';
import 'FAQ.dart';
import 'bottom_exchange.dart';
import 'market.dart';


import 'my_account.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  bool light = true;
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Container(
            alignment: Alignment.center,
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => login()));
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.yellow,
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 50,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Text(
                    "Sachin Saini",
                    style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 65,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.circular(14.0)),
                    child: ListTile(
                      leading:Image.asset("image/share.png", color: Colors.white,height: 40,width: 40,),
                      title: Text("Invite Friends",
                          style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600)),
                      subtitle: Text(
                        "Invite Your friends and get 1K",
                        style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      trailing: Icon(
                        Icons.navigate_next_outlined,
                        color: Colors.black,
                      ),
                    )),
                SizedBox(
                  height: 25,
                ),
                Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "General",
                      style: TextStyle(color: Colors.white70, fontSize: 18),
                    )),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => myaccount()));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        color: Colors.blue[900],
                      ),
                    ),
                    title: Text(
                      "My Account",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.navigate_next,
                      color: Colors.white70,
                      size: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => paymentmethod()));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.bookmarks_sharp,
                        color: Colors.blue[900],
                      ),
                    ),
                    title: Text(
                      "Billing/Payment",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.navigate_next,
                      color: Colors.white70,
                      size: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FAQ()));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.question_mark,
                        color: Colors.blue[900],
                      ),
                    ),
                    title: Text(
                      "FAQ & Support",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.navigate_next,
                      color: Colors.white70,
                      size: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "General",
                      style: TextStyle(color: Colors.white70, fontSize: 18),
                    )),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => selectlanguage()));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.language,
                        color: Colors.blue[900],
                      ),
                    ),
                    title: Text(
                      "Language",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.navigate_next,
                      color: Colors.white70,
                      size: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.dark_mode,
                      color: Colors.blue[900],
                    ),
                  ),
                  title: Text(
                    "Dark Mode",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  trailing: Switch(
                    // This bool value toggles the switch.
                    value: light,
                    activeColor: Colors.blue[900],
                    onChanged: (bool value) {
                      // This is called when the user toggles the switch.
                      setState(() {
                        light = value;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => login()));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.language,
                        color: Colors.blue[900],
                      ),
                    ),
                    title: Text(
                      "Log Out",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    trailing: Icon(
                      Icons.navigate_next,
                      color: Colors.white70,
                      size: 30,
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
