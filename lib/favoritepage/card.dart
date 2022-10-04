import 'package:buildnow/favoritepage/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../constants/constants.dart' as Constants;

class ProductCardF extends StatefulWidget {
  final productsList;

  const ProductCardF({Key? key, this.productsList}) : super(key: key);

  @override
  State<ProductCardF> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProductCardF> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: widget.productsList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 38.0,
        crossAxisSpacing: 22.0,
      ),
      itemBuilder: (BuildContext context, int idx) {
        return ProductCard(
            productName: widget.productsList[idx].name,
            productPrice: widget.productsList[idx].price,
            supplierName: widget.productsList[idx].supplierName,
            productSubCategory: widget.productsList[idx].subCategory,
            productNrOfReviews: widget.productsList[idx].nrOfReviews);
      },
    );
  }
}
