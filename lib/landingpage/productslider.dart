import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart'; 

class ProductSlider extends StatefulWidget {
  final productsList;

  const ProductSlider({Key? key, this.productsList}) : super(key: key);

  @override
  State<ProductSlider> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProductSlider> {
  @override
  Widget build(BuildContext context) {
    int productsCount = (widget.productsList.length / 4).round();
    return CarouselSlider.builder(
      options: CarouselOptions(
        aspectRatio: 2.0,
        enlargeCenterPage: false,
        viewportFraction: 1
      ),
      itemCount: productsCount,
      itemBuilder: (context, index, realIndex) {
        final int first = index;
        final int second = index < productsCount - 1 ? first + 1 : productsCount;
        return Row(
          children: [for(var i=4*first; i <= 4*second - 1 && i <= widget.productsList.length - 1; i+=1) i].map((idx) {
            return idx != -1 ? Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                color: Colors.red,
                child: Center(
                  child: Text(widget.productsList[idx])
                )
              ),
            )
            :
            Container();
          }).toList(),
        );
      },
    );
  }
}