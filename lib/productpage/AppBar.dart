import 'package:flutter/material.dart';

AppBar buildAppBar(BuildContext context) {

  Icon search_icon = Icon(Icons.search_outlined);
  Widget search = Text("");

  return AppBar(
    flexibleSpace: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/bluegradient.png'), 
              fit: BoxFit.fill,
          )
      ),
    ),
    leading: Container(
      child: Row(
        children: [
          Image.asset('assets/bluelogo.png'),
          Container(
            margin: EdgeInsets.fromLTRB(70, 0, 0, 0),
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white
            ),
            child: Icon(
              Icons.star_half,
              color: Colors.yellow,
            ),
          ),
        ],
      )
    ),
    leadingWidth: 180,
    actions: <Widget> [
      Container(
        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.home_outlined),
        )
      ),
      Container(
        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.delivery_dining,)
        )
      ),
      Container(
        margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.favorite_border),
        )
      ),
      Container(
        margin: EdgeInsets.fromLTRB(0, 0, 70, 0),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.person_outline)
        ),
      ),
    ],
    title: search
  );
}
