import 'package:ecomerce_store1/screens/screens.dart';
import 'package:flutter/material.dart';

class FeaturedItems extends StatelessWidget {
  const FeaturedItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      height: 200,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _item(
                context, 'assets/draped_dress.jpg', 'Draped Dress', '\$129.00'),
            _item(
                context, 'assets/floral_dress.jpg', 'Floral Dress', '\$69.90'),
            _item(context, 'assets/mini_dress.jpg', 'Mini Dress', '\$129.00'),
            _item(
                context, 'assets/draped_dress.jpg', 'Draped Dress', '\$129.00'),
            _item(
                context, 'assets/floral_dress.jpg', 'Floral Dress', '\$69.90'),
            _item(context, 'assets/mini_dress.jpg', 'Mini Dress', '\$129.00'),
          ],
        ),
      ),
    );
  }

  GestureDetector _item(BuildContext context, String imgUrl, String dressName,
      String dressPrice) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) =>
                    ItemDetails(imgUrl: imgUrl, itemName: dressName)));
      },
      child: Container(
        margin: const EdgeInsets.only(
          left: 10,
        ),
        height: 200,
        width: 130,
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imgUrl,
                  height: 160,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              dressName,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              dressPrice,
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
    );
  }
}
