import 'package:flutter/material.dart';
import 'package:instagram_web_clone/responsivelayout.dart';
import 'package:instagram_web_clone/smallscreen.dart';
import 'package:universal_html/prefer_universal/html.dart' as html;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram Web",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout.isSmallScreen(context)
          ? SmallScreen()
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 280.0),
              child: ListView(
                children: <Widget>[
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Image.network("https://i.ibb.co/VSYDF60/insta.png"),
                      // Image.network("https://i.ibb.co/64MYmDw/insta.gif"),
                      CardView(),
                    ],
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "ABOUT US  SUPPORT  PRESS  API  JOBS  PRIVACY  TERMS  ",
                        style: TextStyle(
                            color: Colors.blueGrey[600],
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "@ 2019 INSTAGRAM FROM NIKHIL.CF",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}

class CardView extends StatefulWidget {
  @override
  _CardViewState createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 360,
          width: 350,
          child: Card(
            elevation: 0.3,
            child: Column(
              children: <Widget>[
                Container(
                  height: 100,
                  width: 200,
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKqt71Mxt6PxeTNe-Wicyv6NAldccw5cYZJ7E79yc8NdsWJTY",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: 100,
                  child: ClipOval(
                    child: Image.network(
                      "https://media.licdn.com/dms/image/C5103AQEV-fY1drsVlQ/profile-displayphoto-shrink_200_200/0?e=1570665600&v=beta&t=4Y0dNGVdAORU0kortOxFRvUvxYK5pvRhBYP-LVlp2QM",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 17,
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  onPressed: () {
                    html.window.open(
                        "https://www.instagram.com/nikhil_chaudhary269/",
                        "name");
                  },
                  child: Text(
                    "Continue as nikhil_chaudhary269",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.normal),
                  ),
                  color: Colors.blue[600],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 35.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Not nikhil_chaudhary269 ?",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15.0),
                      ),
                      Text(
                        "Switch accounts",
                        style: TextStyle(
                            color: Colors.blue[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Get the app.",
          style: TextStyle(fontSize: 15.0),
        ),
        Row(
          children: <Widget>[
            InkWell(
              onTap: () {
                html.window.open(
                    "https://apps.apple.com/app/instagram/id389801252?vt=lo",
                    "apple");
              },
              child: Container(
                height: 100,
                width: 160,
                child: Image.network(
                  "https://www.instagram.com/static/images/appstore-install-badges/badge_ios_english-en.png/180ae7a0bcf7.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                html.window.open(
                    "https://play.google.com/store/apps/details?id=com.instagram.android&referrer=utm_source%3Dinstagramweb%26utm_campaign%3DloginPage%26ig_mid%3DXIUF8WALAAGZFKZ0IGKATZZ-1RBM%26utm_content%3Dlo%26utm_medium%3Dbadge",
                    "android");
              },
              child: Container(
                  height: 100,
                  width: 160,
                  child: Image.network(
                    "https://www.instagram.com/static/images/appstore-install-badges/badge_android_english-en.png/e9cd846dc748.png",
                    fit: BoxFit.contain,
                  )),
            )
          ],
        )
      ],
    );
  }
}
