import 'package:ecomerce_store1/helpers/size_config.dart';
import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            const Text(
              'Dresses',
              style: TextStyle(
                color: Color(0xffA7AAB7),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 0.62 * SizeConfig.heightMultiplier),
              height: 0.24 * SizeConfig.heightMultiplier,
              width: 12.75 * SizeConfig.widthMultiplier,
              color: const Color(0xffA7AAB7),
            )
          ],
        ),
        const Text(
          'T-Shirt',
          style: TextStyle(
            color: Color(0xff747A8F),
          ),
        ),
        const Text(
          'jacket',
          style: TextStyle(
            color: Color(0xff747A8F),
          ),
        ),
        const Text(
          'Suit',
          style: TextStyle(
            color: Color(0xff747A8F),
          ),
        ),
        const Text(
          'Watches',
          style: TextStyle(
            color: Color(0xff747A8F),
          ),
        ),
      ],
    );
  }
}
