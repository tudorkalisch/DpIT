import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewStars extends StatelessWidget {
  var userRating;
  var productRating;
  var userReview;
  var thingOrdered;
  var supplier;
  var date;
  var image;

  ReviewStars(this.userRating, this.productRating, this.userReview,
      this.thingOrdered, this.supplier, this.date, this.image);

  String thingOrdered2 =
      'Caramida 16x16 chestie, rosu, chestie chestie chestie mai multe chestii deoarece de obicei sunt multe chestii ';
  String userReview2 =
      'Imi place foarte multa tigla asta deoarece este portocalie si cool, bravo dedeman produse buune, as vrea sa scriu mai mult dar nu stiu ce, este tigla extraordinara, recomand 10/10, 5/5 stele, perfecta.';
  String supplier2 = 'Dedeman Leroy Merlin';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40),
      child: Center(
          child: Container(
        width: 700,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 15, left: 50, right: 50),
            child: Container(
              child: Align(
                alignment: Alignment.center,
                child: Text(this.thingOrdered,
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 50),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                this.date + '\n' + this.supplier,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Padding(
                      padding: EdgeInsets.only(left: 50, top: 10),
                      child: Container(
                        child: Align(
                            alignment: Alignment.centerLeft,
                            child: Column(children: [
                              Text('Stele acordate',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600)),
                              Padding(
                                padding: EdgeInsets.only(top: 7),
                                child: Container(
                                  child: RatingBarIndicator(
                                    rating: this.userRating,
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
                            ])),
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 50, left: 50),
                      child: Column(
                        children: [
                          Text('Stelele produsului',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600)),
                          Padding(
                            padding: EdgeInsets.only(top: 7),
                            child: Container(
                              child: RatingBarIndicator(
                                rating: this.productRating,
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
                        ],
                      )),
                ],
              ),
              Padding(padding: EdgeInsets.only(left: 200)),
              Container(
                child: Container(
                    width: 225,
                    height: 225,
                    child: Image(image: AssetImage(this.image))),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 40),
            child: Divider(
                indent: 30,
                endIndent: 30,
                color: Color(greyUsedInDivider),
                thickness: 2,
                height: 2),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: TextButton(
              onPressed: () {},
              child: Text('modifica review-ul', style: TextStyle(fontSize: 16)),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 20),
              child: Center(
                  child: Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Text(this.userReview,
                    style: TextStyle(
                      fontSize: 16,
                    )),
              )))
        ]),
      )),
    );
  }
}
