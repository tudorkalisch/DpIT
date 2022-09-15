import 'package:buildnow/loginpage/loginpage.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart' as Constants;

import 'package:flutter/cupertino.dart';

import 'package:iconamoon/iconamoon.dart';

import 'package:icons_plus/icons_plus.dart';

import '../loginpage/loginpage.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../profilepagebuyer/profilepagebuyer.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final AppBar appBar;

  const DefaultAppBar({Key? key, required this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loggedIn = true;

    return AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Constants.blueGradientPath),
                  fit: BoxFit.fill
        ))),
        title: Container(
              child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Image.asset(
              Constants.whiteLogoNoBackgroundPath,
              fit: BoxFit.contain,
              scale: 17,
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 120),
              child: Container(
                height: 37,
                width: 450,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.only(left: 14),
                  child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(CupertinoIcons.search),
                  ),
                  style: TextStyle(fontSize: 15),
                )),
              )),
          ],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 35),
            child: IconButton(
              icon: Icon(
                IconaMoon.home
              ),
              onPressed: () {},
            )
          ),
          Padding(
            padding: EdgeInsets.only(right: 35),
            child: IconButton(
              icon: Icon(
                LineAwesome.shipping_fast_solid
              ),
              onPressed: () {},
            )
          ),
          Padding(
            padding: EdgeInsets.only(right: 45),
            child: IconButton(
              icon: Icon(
                CupertinoIcons.heart,
              ),
              onPressed: () {},
            )
          ),
          Padding(
            padding: EdgeInsets.only(right: 60, bottom: 8, top: 8),
            child: !loggedIn ? Container(
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(14)),
                color: Colors.white
              ),
              child: TextButton(
                child: Text(
                  "Log in",
                  style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
                }
              )
            )
            :
            TextButton(
              child: Icon(
                size: 32,
                color: Colors.white,
                FontAwesomeIcons.circleUser
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfilePage()));
              },
            )
          ),
        ],
  );
  }

  @override 
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}