import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import '../appbar/appbar.dart';
import '../constants/constants.dart';
import '../contactcard/contactcard.dart';
import 'filtersreviews.dart';
import 'reviewelement.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ListReviews extends StatefulWidget {
  const ListReviews({Key? key}) : super(key: key);
  @override
  State<ListReviews> createState() => ReviewsPage();
}

class ReviewsPage extends State<ListReviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(backgroundColor),
      appBar: DefaultAppBar(appBar: AppBar()),
      body: ListView(children: [
        SizedBox(
          child: FilterReviewList(),
        ),
        SizedBox(
          child: Stack(children: [ReviewElement()]),
        )
      ]),
    );
  }
}
