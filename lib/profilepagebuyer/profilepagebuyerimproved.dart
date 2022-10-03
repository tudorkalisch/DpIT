import 'package:buildnow/profilepagebuyer/card.dart';
import 'package:buildnow/reviewslist/reviewspage.dart';
import 'package:flutter/material.dart';
import '../appbar/appbar.dart';
import '../constants/constants.dart';
import '../contactcard/contactcard.dart';
import 'variables.dart';
import '../orderlist/orderlistpagecreator.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../product/product_card.dart';
import 'history.dart';
import 'cardforwarranty.dart';
import 'card.dart';
import 'cardforwarranty.dart';
import '../warrantiespage/thirdfile.dart';
import '../product/product_card.dart';
import 'cardforreturn.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  State<ProfilePage> createState() => Home();
}

class Home extends State<ProfilePage> {
  HistoryElement lastOrderedProduct = HistoryElement(
      'Tigla 16x16 chestie, rosu, chestie chestie chestie ',
      '3.99',
      'Dedeman',
      'Acoperis',
      '3');
  HistoryElement secondLatestOrderedProduct = HistoryElement(
      'Ciment sofisticat, rosu, chestie chestie chestie ',
      '15.99',
      'Dedeman',
      'Acoperis',
      '3');
  HistoryElement thirdLatestOrderedProduct = HistoryElement(
      'Termopan 8x8 incredibil, rosu, chestie chestie chestie ',
      '10.99',
      'Dedeman',
      'Acoperis',
      '3');
  HistoryElement fourthLatestOrderedProduct = HistoryElement(
      'Casa asemblata, rosu, chestie chestie chestie ',
      '100.99',
      'Leroy Merlin',
      'Acoperis',
      '3');

  CardProfilePage myOrders = CardProfilePage(
    'Comenzile mele',
    'Tigla ceramica, teracota, 30 x 50 cm',
    '7.00',
    'MaterialeDeTop',
    tiglaImagePath,
  );
  CardProfilePageReturns myReturns = CardProfilePageReturns(
    'Retururile mele',
    'Caramida plina 240 x 115 x 63 mm',
    '3.99',
    'MaterialeIeftine',
    caramidajpg,
  );

  CardWarranty myWarranties = CardWarranty('Garantiile mele',
      'Tigla ceramica, teracota, 30 x 50 cm', '3', 'MaterialeDeTop');

  double userRating = 4;
  @override
  Widget build(BuildContext context) {
    List<HistoryElement> elementList = [
      lastOrderedProduct,
      secondLatestOrderedProduct,
      thirdLatestOrderedProduct,
      fourthLatestOrderedProduct
    ];
    return Scaffold(
      backgroundColor: Color(backgroundColor),
      appBar: DefaultAppBar(appBar: AppBar()),
      body: ListView(children: [
        SizedBox(
          height: 70,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(children: [
                  Container(
                    margin: EdgeInsets.only(top: 0, left: 0),
                    child: CircleAvatar(
                      radius: 116,
                      backgroundColor: Color(backgroundColor),
                      child: CircleAvatar(
                        backgroundColor: Color(backgroundColor),
                        backgroundImage: AssetImage(profilePicture),
                        radius: 115,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50),
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
                            'Cont creat pe: $dataDeNastere',
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
                        right: 130,
                        child: Container(
                          child: TextButton(
                            onPressed: () {},
                            child: Text('Log out'),
                          ),
                        ),
                      )
                    ]),
                  ),
                ]),
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Column(
                    children: [
                      myOrders,
                      Padding(padding: EdgeInsets.only(top: 30)),
                      myWarranties,
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      myReturns,
                      Padding(
                        padding: EdgeInsets.only(left: 0, top: 30),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          height: 250,
                          width: 350,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListReviews()),
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
                                      fontWeight: FontWeight.w600,
                                    )),
                              ),
                              Positioned(
                                top: 30,
                                right: 50,
                                child: Container(
                                  height: 180,
                                  width: 180,
                                  child:
                                      Image(image: AssetImage(tiglaImagePath)),
                                ),
                              ),
                              Positioned(
                                top: 150,
                                left: 10,
                                child: Container(
                                  height: 60,
                                  child: Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Text(
                                      'Tigla ceramica, teracota, 30 x 50 cm',
                                      style: TextStyle(
                                          fontSize: 14, color: Colors.black),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                  top: 220,
                                  left: 10,
                                  child: Text(
                                    'MaterialeDeTop',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  )),
                              Positioned(
                                top: 215,
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
                ),
              ],
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
                      margin: EdgeInsets.only(right: 0),
                      height: 230,
                      width: 1110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        for (var i = 0; i <= 2; i++) ...[
                          elementList[i],
                          VerticalDivider(
                            width: 10,
                            thickness: 2,
                            color: Color(greyUsedInDivider),
                            indent: 30,
                            endIndent: 30,
                          ),
                        ],
                        elementList[3],
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
