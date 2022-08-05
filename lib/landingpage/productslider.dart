import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../constants/constants.dart' as Constants;

class ProductSlider extends StatefulWidget {
  final productsList;

  const ProductSlider({Key? key, this.productsList}) : super(key: key);

  @override
  State<ProductSlider> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProductSlider> {
  final buttonCarouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    int productsCount = (widget.productsList.length / 4).round();
    return Row(children: [
      Padding(
          padding: EdgeInsets.only(right: 15),
          child: Container(
              width: 35,
              child: RaisedButton(
                onPressed: () => buttonCarouselController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.linear),
                child: Text('←'),
              ))),
      Expanded(
        child: CarouselSlider.builder(
          carouselController: buttonCarouselController,
          options: CarouselOptions(
              aspectRatio: 2.0, enlargeCenterPage: false, viewportFraction: 1),
          itemCount: productsCount,
          itemBuilder: (context, index, realIndex) {
            final int first = index;
            final int second = first + 1;
            return Row(
              children: [for (var i = 4 * first; i <= 4 * second - 1; i += 1) i]
                  .map((idx) {
                return idx < widget.productsList.length
                    ? Expanded(
                        flex: 1,
                        child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            color: Colors.white,
                            child: Column(children: [
                              Expanded(
                                  flex: 16,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                Constants.blueGradientPath),
                                            fit: BoxFit.cover)),
                                  )),
                              Expanded(
                                  flex: 9,
                                  child: Container(
                                      child: Stack(children: [
                                    Positioned(
                                        top: 15,
                                        left: 15,
                                        child: Text(
                                          widget.productsList[idx],
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w600),
                                        )),
                                    Positioned(
                                        top: 40,
                                        left: 15,
                                        child: Text(
                                          "5.99 RON",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        )),
                                    Positioned(
                                        top: 75,
                                        left: 15,
                                        child: Text(
                                          "Distribuitor: Dedeman",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        )),
                                    Positioned(
                                        top: 100,
                                        left: 15,
                                        child: Text(
                                          "Categorie: Acoperiș",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        )),
                                    Positioned(
                                        bottom: 15,
                                        left: 15,
                                        child: Text(
                                          "3 review-uri",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500),
                                        )),
                                    Positioned(
                                      bottom: 15,
                                      right: 15,
                                      child: Container(
                                        width: 30,
                                      ),
                                    )
                                  ])))
                            ])),
                      )
                    : Expanded(
                        flex: 1,
                        child: Container(),
                      );
              }).toList(),
            );
          },
        ),
      ),
      Padding(
          padding: EdgeInsets.only(left: 15),
          child: Container(
            width: 35,
            child: RaisedButton(
              onPressed: () => buttonCarouselController.nextPage(
                  duration: Duration(milliseconds: 300), curve: Curves.linear),
              child: Text('→'),
            ),
          ))
    ]);
  }
}
