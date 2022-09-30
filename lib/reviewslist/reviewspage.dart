import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import '../appbar/appbar.dart';
import '../constants/constants.dart';
import '../contactcard/contactcard.dart';
import 'filtersreviews.dart';
import 'reviewelement.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ListReviews extends StatefulWidget {
  List<ReviewStars> myList = [
    ReviewStars(
        3.2,
        4.1,
        'Imi place foarte multa tigla asta deoarece este portocalie si cool, bravo dedeman produse buune, as vrea sa scriu mai mult dar nu stiu ce, este tigla extraordinara, recomand 10/10, 5/5 stele, perfecta.',
        'Caramida 16x16 chestie, rosu, chestie chestie chestie mai multe chestii deoarece de obicei sunt multe chestii ',
        'Dedeman'),
    ReviewStars(
        4.4,
        2.7,
        'Nu imi place foarte multa tigla asta deoarece este portocalie si cool, bravo dedeman produse buune, as vrea sa scriu mai mult dar nu stiu ce, este tigla extraordinara, recomand 10/10, 5/5 stele, perfecta.',
        'Tigla 16x16 chestie, rosu, chestie chestie chestie mai multe chestii deoarece de obicei sunt multe chestii ',
        'Brico Depot'),
  ];
  ListReviews({Key? key}) : super(key: key);
  @override
  State<ListReviews> createState() => ReviewsPage();
}

class ReviewsPage extends State<ListReviews> {
  _onSortStarsUser(list) {
    setState(() {
      widget.myList.sort((a, b) => b.userRating.compareTo(a.userRating));
    });
  }

  _onSortStarsUserReversed(list) {
    setState(() {
      widget.myList.sort((a, b) => a.userRating.compareTo(b.userRating));
    });
  }

  _onSortStarsProduct(list) {
    setState(() {
      widget.myList.sort((a, b) => b.productRating.compareTo(a.productRating));
    });
  }

  _onSortStarsProductReversed(list) {
    setState(() {
      widget.myList.sort((a, b) => a.productRating.compareTo(b.productRating));
    });
  }

  bool isReversedUserRating = false;
  bool isReversedProductRating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(backgroundColor),
      appBar: DefaultAppBar(appBar: AppBar()),
      body: ListView(children: [
        SizedBox(
          child: Padding(
            padding: EdgeInsets.only(top: 30),
            child: Center(
              child: Container(
                width: 800,
                height: 30,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(greyUsedInDivider)),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Color.fromARGB(255, 6, 109, 114).withOpacity(0.15)),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    'Sorteaza dupa: ',
                    style: TextStyle(
                        color: Color.fromARGB(255, 70, 70, 70),
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(padding: EdgeInsets.only(left: 100)),
                  TextButton(
                    onPressed: () {
                      if (isReversedUserRating == false) {
                        _onSortStarsUser(widget.myList);
                        isReversedUserRating = true;
                      } else {
                        _onSortStarsUserReversed(widget.myList);
                        isReversedUserRating = false;
                      }
                    },
                    child:
                        Text('stele acordate', style: TextStyle(fontSize: 16)),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10, right: 20)),
                  TextButton(
                    onPressed: () {
                      if (isReversedProductRating == false) {
                        _onSortStarsProduct(widget.myList);
                        isReversedProductRating = true;
                      } else {
                        _onSortStarsProductReversed(widget.myList);
                        isReversedProductRating = false;
                      }
                    },
                    child: Text('stelele produsului',
                        style: TextStyle(fontSize: 16)),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10, right: 20)),
                  TextButton(
                    onPressed: () {},
                    child: Text('timp', style: TextStyle(fontSize: 16)),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10, right: 20)),
                  TextButton(
                    onPressed: () {},
                    child: Text('distribuitor', style: TextStyle(fontSize: 16)),
                  ),
                ]),
              ),
            ),
          ),
        ),
        widget.myList[0],
        widget.myList[1],
      ]),
    );
  }
}
