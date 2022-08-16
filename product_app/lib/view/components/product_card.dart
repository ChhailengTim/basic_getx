import 'package:flutter/material.dart';
import 'package:product_app/components/fav_btn.dart';
import 'package:product_app/components/price.dart';
import 'package:product_app/model/product_model.dart';
import 'package:product_app/utils/constaint.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final Product product;

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
        decoration: const BoxDecoration(
          color: Color(0xFFF7F7F7),
          borderRadius: BorderRadius.all(
            Radius.circular(defaultPadding * 1.25),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: product.productNum!,
              child: Center(
                child: Image.network(
                  product.imageThumbnail!,
                  height: 120,
                ),
              ),
            ),
            Text(
              product.brandName!,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            Text(
              "Fruits",
              style: Theme.of(context).textTheme.caption,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Price(amount: '${product.sellPrice}'),
                const FavBtn(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
