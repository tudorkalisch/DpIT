import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../product/product_card.dart';
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
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  color: Color(Constants.greyButtonColor).withOpacity(0.55)),
              child: TextButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))))),
                  onPressed: () => buttonCarouselController.nextPage(
                      duration: Duration(milliseconds: 300),
                      curve: Curves.linear),
                  child: Center(
                    child:
                        Icon(Icons.arrow_back, color: Colors.black, size: 15),
                  )))),
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
                    ? ProductCard(
                        productName: widget.productsList[idx].name,
                        productPrice: widget.productsList[idx].price,
                        supplierName: widget.productsList[idx].supplierName,
                        productSubCategory:
                            widget.productsList[idx].subCategory,
                        productNrOfReviews:
                            widget.productsList[idx].nrOfReviews)
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
            height: 35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(100)),
                color: Color(Constants.greyButtonColor).withOpacity(0.55)),
            child: TextButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))))),
                onPressed: () => buttonCarouselController.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.linear),
                child: Center(
                  child:
                      Icon(Icons.arrow_forward, color: Colors.black, size: 15),
                )),
          ))
    ]);
  }
}
