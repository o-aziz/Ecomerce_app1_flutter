import 'package:ecomerce_store1/helpers/size_config.dart';
import 'package:ecomerce_store1/screens/screens.dart';
import 'package:flutter/material.dart';

class NewArrivalsItems extends StatelessWidget {
  const NewArrivalsItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: 5.10 * SizeConfig.widthMultiplier),
      child: Column(
        children: [
          _item(context, 'assets/belted_dress.jpg', 'Soft feel belted dress',
              'GRAY MARL 6 5644/470', 'US \$149.89'),
          SizedBox(height: 1.87 * SizeConfig.heightMultiplier),
          _item(context, 'assets/contrasting_satin.jpg', 'Contrasting satin',
              'BLACK - 8779/465', 'US \$129.49'),
        ],
      ),
    );
  }

  GestureDetector _item(BuildContext context, String imgUrl, String dressName,
      String dressInfo, String dressPrice) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) =>
                    ItemDetails(imgUrl: imgUrl, itemName: dressName)));
      },
      child: Row(
        children: [
          Container(
            height: 8.72 * SizeConfig.heightMultiplier,
            width: 17.85 * SizeConfig.widthMultiplier,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(1.49 * SizeConfig.heightMultiplier),
            ),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(1.49 * SizeConfig.heightMultiplier),
              child: Image.asset(
                imgUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(width: 2.02 * SizeConfig.widthMultiplier),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(dressName,
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontSize: 2.5 * SizeConfig.heightMultiplier)),
              Text(dressInfo,
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(fontSize: 1.5 * SizeConfig.heightMultiplier)),
              SizedBox(height: 0.99 * SizeConfig.heightMultiplier),
              Text(
                dressPrice,
                style: TextStyle(
                    color: const Color(0xffFF952C),
                    fontSize: 1.8 * SizeConfig.heightMultiplier),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
