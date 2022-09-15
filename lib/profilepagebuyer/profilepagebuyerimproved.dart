import 'package:buildnow/reviewslist/reviewspage.dart';
import 'package:flutter/material.dart';
import '../appbar/appbar.dart';
import '../constants/constants.dart';
import '../contactcard/contactcard.dart';
import '../profilepagebuyer/variables/variables.dart';
import '../orderlist/orderlistpagecreator.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  State<ProfilePage> createState() => Home();
}

class Home extends State<ProfilePage> {
  double userRating = 2.7;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(backgroundColor),
      appBar: DefaultAppBar(appBar: AppBar()),
      body: ListView(children: [
        SizedBox(
          height: 70,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, left: 40),
              child: CircleAvatar(
                radius: 116,
                backgroundColor: Color(backgroundColor),
                child: CircleAvatar(
                  backgroundColor: Color(backgroundColor),
                  backgroundImage: AssetImage(avatarImagePath),
                  radius: 115,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 80),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: 250,
                width: 350,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OrderList()),
                    );
                  },
                  height: double.infinity,
                  child: Stack(children: [
                    Positioned(
                      top: 20,
                      left: 10,
                      child: Text('Comenzile mele',
                          style: TextStyle(fontSize: 18, color: Colors.black)),
                    ),
                    Positioned(
                      top: 30,
                      right: 50,
                      child: Container(
                        height: 170,
                        width: 170,
                        child: Image(image: AssetImage(tiglaImagePath)),
                      ),
                    ),
                    Positioned(
                      top: 190,
                      left: 10,
                      child: Text(
                        lastOrderedProductName,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 210,
                        left: 10,
                        child: Text(
                          "Distribuitor: " + lastOrderedProductSupplier,
                          style: TextStyle(fontSize: 15),
                        )),
                    Positioned(
                      top: 200,
                      right: 10,
                      child: Container(
                        child: Text(
                          lastOrderedProductPriceString + '/Bucata',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 45),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: 250,
                width: 350,
                child: FlatButton(
                  height: double.infinity,
                  onPressed: () {},
                  child: Stack(children: [
                    Positioned(
                      top: 20,
                      left: 10,
                      child: Text('Retururile mele',
                          style: TextStyle(fontSize: 18, color: Colors.black)),
                    ),
                    Positioned(
                      top: 30,
                      right: 50,
                      child: Container(
                        height: 170,
                        width: 170,
                        child: Image(image: AssetImage(tiglaImagePath)),
                      ),
                    ),
                    Positioned(
                      top: 190,
                      left: 10,
                      child: Text(
                        lastOrderedProductName,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 210,
                        left: 10,
                        child: Text(
                          "Distribuitor: " + lastOrderedProductSupplier,
                          style: TextStyle(fontSize: 15),
                        )),
                    Positioned(
                      top: 200,
                      right: 10,
                      child: Container(
                        child: Text(
                          lastOrderedProductPriceString + '/Bucata',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 50)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                bottom: 0,
              ),
              child: Stack(children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color(greyUsedInDivider)),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  height: 250,
                  width: 326,
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Date personale'
                    '\n'
                    '\n',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Positioned(
                    top: 65,
                    left: 20,
                    child: Text(
                      'Prenume: $prenume'
                      '\n'
                      'Nume: $nume'
                      '\n'
                      'Email: $email'
                      '\n'
                      'Nr Telefon: $nrTelefon'
                      '\n'
                      'Data de nastere: $dataDeNastere',
                      style: TextStyle(height: 1.6, fontSize: 15),
                    )),
                Stack(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 200, left: 20),
                      child: Container(
                          height: 1,
                          width: 280,
                          color: Color(greyUsedInDivider)),
                    )
                  ],
                ),
                Positioned(
                  top: 205,
                  right: 125,
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Mai multe'),
                  ),
                )
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 15),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: 250,
                width: 350,
                child: FlatButton(
                  onPressed: () {},
                  height: double.infinity,
                  child: Stack(children: [
                    Positioned(
                      top: 20,
                      left: 10,
                      child: Text('Garantia produselor mele',
                          style: TextStyle(fontSize: 18, color: Colors.black)),
                    ),
                    Positioned(
                      top: 30,
                      right: 50,
                      child: Container(
                        height: 170,
                        width: 170,
                        child: Image(image: AssetImage(tiglaImagePath)),
                      ),
                    ),
                    Positioned(
                      top: 190,
                      left: 10,
                      child: Text(
                        lastOrderedProductName,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 210,
                        left: 10,
                        child: Text(
                          "Distribuitor: " + lastOrderedProductSupplier,
                          style: TextStyle(fontSize: 15),
                        )),
                    Positioned(
                      top: 200,
                      right: 10,
                      child: Container(
                        child: Text(
                          lastOrderedProductPriceString + '/Bucata',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 8, left: 30),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: 250,
                width: 350,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ListReviews()),
                    );
                  },
                  child: Stack(children: [
                    Positioned(
                      top: 20,
                      left: 10,
                      child: Text('Review-urile mele',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          )),
                    ),
                    Positioned(
                      top: 30,
                      right: 50,
                      child: Container(
                        height: 170,
                        width: 170,
                        child: Image(image: AssetImage(tiglaImagePath)),
                      ),
                    ),
                    Positioned(
                      top: 190,
                      left: 10,
                      child: Text(
                        lastOrderedProductName,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 210,
                        left: 10,
                        child: Text(
                          "Distribuitor: " + lastOrderedProductSupplier,
                          style: TextStyle(fontSize: 15),
                        )),
                    Positioned(
                      top: 200,
                      right: 10,
                      child: Container(
                        child: RatingBarIndicator(
                          rating: userRating,
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          itemCount: 5,
                          itemSize: 24.0,
                          direction: Axis.horizontal,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
        Column(children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30, right: 1000),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Text(
                      'Istoric',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      height: 230,
                      width: 1100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: FlatButton(
                            onPressed: () {},
                            child: Stack(children: [
                              Container(
                                child: Container(
                                  height: 190,
                                  width: 164,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 14, horizontal: 40),
                                  child:
                                      Image(image: AssetImage(tiglaImagePath)),
                                ),
                              ),
                              Positioned(
                                  left: 40,
                                  top: 10,
                                  child: Text(
                                    lastAccesedProductName,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  )),
                              Positioned(
                                  top: 195,
                                  left: 20,
                                  child: Text('Distribuitor: ' +
                                      lastAccesedProductSupplier)),
                              Positioned(
                                top: 175,
                                left: 20,
                                child: Text(
                                    lastAccesedProductPriceString + " RON"),
                              ),
                            ]),
                          ),
                        ),
                        VerticalDivider(
                          width: 20,
                          thickness: 2,
                          color: Color(greyUsedInDivider),
                          indent: 30,
                          endIndent: 30,
                        ),
                        Container(
                          child: FlatButton(
                            onPressed: () {},
                            child: Stack(children: [
                              Positioned(
                                  left: 40,
                                  top: 10,
                                  child: Text(
                                    secondLatestAccesedProductName,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  )),
                              Container(
                                child: Container(
                                  height: 190,
                                  width: 164,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 14, horizontal: 40),
                                  child:
                                      Image(image: AssetImage(tiglaImagePath)),
                                ),
                              ),
                              Positioned(
                                  top: 195,
                                  left: 20,
                                  child: Text('Distribuitor: ' +
                                      secondLatestAccesedProductSupplier)),
                              Positioned(
                                top: 175,
                                left: 20,
                                child: Text(
                                    secondLatestAccesedProductPriceString +
                                        " RON"),
                              ),
                            ]),
                          ),
                        ),
                        VerticalDivider(
                          width: 20,
                          thickness: 2,
                          color: Color(greyUsedInDivider),
                          indent: 30,
                          endIndent: 30,
                        ),
                        Container(
                          child: FlatButton(
                            onPressed: () {},
                            child: Stack(children: [
                              Container(
                                height: 190,
                                width: 164,
                                margin: EdgeInsets.symmetric(
                                    vertical: 14, horizontal: 40),
                                child: Image(image: AssetImage(tiglaImagePath)),
                              ),
                              Positioned(
                                  left: 40,
                                  top: 10,
                                  child: Text(
                                    thirdLatestAccesedProductName,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  )),
                              Positioned(
                                  top: 195,
                                  left: 20,
                                  child: Text('Distribuitor: ' +
                                      thirdLatestAccesedProductSupplier)),
                              Positioned(
                                top: 175,
                                left: 20,
                                child: Text(
                                    thirdLatestAccesedProductPriceString +
                                        " RON"),
                              ),
                            ]),
                          ),
                        ),
                        VerticalDivider(
                          width: 20,
                          thickness: 2,
                          color: Color(greyUsedInDivider),
                          indent: 30,
                          endIndent: 30,
                        ),
                        Container(
                          child: FlatButton(
                            onPressed: () {},
                            child: Stack(children: [
                              Container(
                                child: Container(
                                  height: 190,
                                  width: 164,
                                  margin: EdgeInsets.symmetric(
                                      vertical: 14, horizontal: 40),
                                  child:
                                      Image(image: AssetImage(tiglaImagePath)),
                                ),
                              ),
                              Positioned(
                                  left: 40,
                                  top: 10,
                                  child: Text(
                                    fourthLatestAccesedProductName,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.black),
                                  )),
                              Positioned(
                                  top: 195,
                                  left: 20,
                                  child: Text('Distribuitor: ' +
                                      fourthLatestAccesedProductSupplier)),
                              Positioned(
                                top: 175,
                                left: 20,
                                child: Text(
                                    fourthLatestAccesedProductPriceString +
                                        " RON"),
                              ),
                            ]),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50),
          ),
          Stack(children: [
            Container(
              width: double.infinity,
              child: ContactCard(),
            ),
          ]),
        ]),
      ]),
    );
  }
}
