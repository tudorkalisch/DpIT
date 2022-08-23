import 'package:flutter/material.dart';
import '../appbar/appbar.dart';
import '../constants/constants.dart';
import '../landingpage/contactcard.dart';
import '../profilepagebuyer/variables/variables.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  State<ProfilePage> createState() => Home();
}

class Home extends State<ProfilePage> {
double ScreenWidth = 0;
  double ScreenHeight = 0;
  @override
  Widget build(BuildContext context) {
    ScreenHeight =  MediaQuery.of(context).size.height;
    ScreenWidth =  MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(backgroundColor),
      appBar: DefaultAppBar(appBar: AppBar()),
      body: ListView(children: [
        Padding(padding: EdgeInsets.only(top: 70)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, left: 40),
              child: CircleAvatar(
                radius: 116,
                backgroundColor: Color(greyUsedInDivider),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage(avatarImagePath),
                  radius: 115,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 74),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: ScreenHeight / 3,
                width: ScreenWidth / 4.515,
                child: FlatButton(
                  onPressed: () {},
                  height: double.infinity,
                  child: Stack(children: [
                    Positioned(
                      top: 20,
                      left: 10,
                      child: Text('Comenzile mele',
                          style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600)),
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
                      child: 
                        Text(
                          "Distribuitor: " +
                          lastOrderedProductSupplier, 
                          style: TextStyle(fontSize: 15),
                          )
                      ),
                    Positioned(
                      top: 200,
                      right: 10,
                      child: Container(
                        child: Text(
                          lastOrderedProductPriceString +
                          '/Bucata',
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
                height: ScreenHeight / 3,
                width: ScreenWidth / 4.515,
                child: FlatButton(
                  height: double.infinity,
                  onPressed: () {},
                  child: Stack(children: [
                    Positioned(
                      top: 20,
                      left: 10,
                      child: Text('Retururile mele',
                          style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600)),
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
                      child: 
                        Text(
                          "Distribuitor: " +
                          lastOrderedProductSupplier, 
                          style: TextStyle(fontSize: 15),
                          )
                      ),
                    Positioned(
                      top: 200,
                      right: 10,
                      child: Container(
                        child: Text(
                          lastOrderedProductPriceString +
                          '/Bucata',
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
              padding: EdgeInsets.only(left: 5),
              child: Stack(children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border:
                        Border.all(color: Color(greyUsedInDivider)),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  height: ScreenHeight / 3,
                  width: ScreenWidth / 4.95,
                  padding: EdgeInsets.all(20),
                  child: Text(
                    'Date personale'
                    '\n'
                    '\n',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
                Padding(
                  padding: EdgeInsets.only(top: 200, left: 20),
                  child: Container(
                      height: 1,
                      width: 280,
                      color: Color(greyUsedInDivider)),
                ),
                Positioned(
                  top: 210,
                  right: 125,
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Mai multe', style: TextStyle(fontSize: 16),),
                  ),
                )
              ]),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, right: 15),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                height: ScreenHeight / 3,
                width: ScreenWidth / 4.515,
                child: FlatButton(
                  onPressed: () {},
                  height: double.infinity,
                  child: Stack(children: [
                    Positioned(
                      top: 20,
                      left: 10,
                      child: Text('Garantia produselor mele',
                          style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600)),
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
                      child: 
                        Text(
                          "Distribuitor: " +
                          lastOrderedProductSupplier, 
                          style: TextStyle(fontSize: 15),
                          )
                      ),
                    Positioned(
                      top: 200,
                      right: 10,
                      child: Container(
                        child: Text(
                          lastOrderedProductPriceString +
                          '/Bucata',
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
                height: ScreenHeight / 3,
                width: ScreenWidth / 4.515,
                child: FlatButton(
                  onPressed: () {},
                  child: Stack(children: [
                    Positioned(
                      top: 20,
                      left: 10,
                      child: Text('Review-urile mele',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w600
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
                      child: 
                        Text(
                          "Distribuitor: " +
                          lastOrderedProductSupplier, 
                          style: TextStyle(fontSize: 15),
                          )
                      ),
                    Positioned(
                      top: 200,
                      right: 10,
                      child: Container(
                          child: Row(
                        children: [
                          SizedBox(
                              height: 24,
                              width: 24,
                              child: Image(
                                image: AssetImage(reviewStarFilled),
                              )),
                          SizedBox(
                              height: 24,
                              width: 24,
                              child: Image(
                                image: AssetImage(reviewStarFilled),
                              )),
                          SizedBox(
                              height: 24,
                              width: 24,
                              child: Image(
                                image: AssetImage(reviewStarFilled),
                              )),
                          SizedBox(
                              height: 24,
                              width: 24,
                              child: Image(
                                image: AssetImage(reviewStarFilled),
                              )),
                          SizedBox(
                              height: 24,
                              width: 24,
                              child: Image(
                                image: AssetImage(reviewStarEmpty),
                              )),
                        ],
                      )),
                    ),
                  ]),
                ),
              ),
            ),
          ],
        ),
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
                        TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
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
                    height: ScreenHeight / 3.4,
                    width: ScreenWidth / 1.455,
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
                                margin: EdgeInsets.symmetric(vertical: 14, horizontal: 40),
                                child: Image(
                                    image: AssetImage(tiglaImagePath)),
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
                                child: Text('Distribuitor: ' + lastAccesedProductSupplier)),
                            Positioned(
                              top: 175, 
                              left: 20,
                              child: Text(lastAccesedProductPriceString + " RON"),
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
                                margin: EdgeInsets.symmetric(vertical: 14, horizontal: 40),
                                child: Image(
                                    image: AssetImage(tiglaImagePath)),
                              ),
                            ),
                            Positioned(
                                top: 195,
                                left: 20,
                                child: Text('Distribuitor: ' + secondLatestAccesedProductSupplier)),
                            Positioned(
                              top: 175, 
                              left: 20,
                              child: Text(secondLatestAccesedProductPriceString + " RON"),
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
                              margin: EdgeInsets.symmetric(vertical: 14, horizontal: 40),
                              child: Image(
                                  image: AssetImage(tiglaImagePath)),
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
                                child: Text('Distribuitor: ' + thirdLatestAccesedProductSupplier)),
                            Positioned(
                              top: 175, 
                              left: 20,
                              child: Text(thirdLatestAccesedProductPriceString + " RON"),
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
                                child: Image(
                                    image: AssetImage(tiglaImagePath)),
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
                                child: Text('Distribuitor: ' + fourthLatestAccesedProductSupplier)),
                            Positioned(
                              top: 175, 
                              left: 20,
                              child: Text(fourthLatestAccesedProductPriceString + " RON"),
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
        SizedBox(
          height: 200,
          width: double.infinity,
          child: Stack(children: [ContactCard()]),
        ),
      ]),
    );
  }
}
