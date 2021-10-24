import 'package:ecomerce_store1/helpers/size_config.dart';
import 'package:ecomerce_store1/screens/screens.dart';
import 'package:flutter/material.dart';

class FeaturedItems extends StatelessWidget {
  const FeaturedItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5.10 * SizeConfig.widthMultiplier),
      height: 24.93 * SizeConfig.heightMultiplier,
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
        margin: EdgeInsets.only(left: 2.55 * SizeConfig.widthMultiplier),
        height: 24.93 * SizeConfig.heightMultiplier,
        width: 33.16 * SizeConfig.widthMultiplier,
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      1.49 * SizeConfig.heightMultiplier)),
              child: ClipRRect(
                borderRadius:
                    BorderRadius.circular(1.49 * SizeConfig.heightMultiplier),
                child: Image.asset(
                  imgUrl,
                  height: 19.95 * SizeConfig.heightMultiplier,
                ),
              ),
            ),
            SizedBox(height: 0.62 * SizeConfig.heightMultiplier),
            Text(
              dressName,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1!
                  .copyWith(fontSize: 2 * SizeConfig.heightMultiplier),
            ),
            Text(
              dressPrice,
              style: Theme.of(context)
                  .textTheme
                  .caption!
                  .copyWith(fontSize: 1.5 * SizeConfig.heightMultiplier),
            ),
          ],
        ),
      ),
    );
  }
}
