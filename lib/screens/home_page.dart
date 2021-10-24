import 'package:ecomerce_store1/helpers/size_config.dart';
import 'package:flutter/material.dart';
import 'package:ecomerce_store1/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B203A),
      body: SafeArea(
        child: Column(
          children: [
            const HeaderWidget(),
            const CategoriesWidget(),
            const Spacer(),
            Container(
              alignment: Alignment.bottomCenter,
              height: 74.8 * SizeConfig.heightMultiplier,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.98 * SizeConfig.heightMultiplier),
                  topRight: Radius.circular(4.98 * SizeConfig.heightMultiplier),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 7.69 * SizeConfig.widthMultiplier,
                      vertical: 4.98 * SizeConfig.heightMultiplier,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Featured',
                          style: TextStyle(
                            color: const Color(0xff273046),
                            fontSize: 3.74 * SizeConfig.heightMultiplier,
                          ),
                        ),
                        Text(
                          'View all',
                          style: TextStyle(
                            color: const Color(0xffD8D9DE),
                            fontSize: 1.87 * SizeConfig.heightMultiplier,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const FeaturedItems(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 7.65 * SizeConfig.widthMultiplier,
                      vertical: 3.74 * SizeConfig.heightMultiplier,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'New arrivals',
                          style: TextStyle(
                            color: const Color(0xff273046),
                            fontSize: 3.74 * SizeConfig.heightMultiplier,
                          ),
                        ),
                        Text(
                          'View all',
                          style: TextStyle(
                            color: const Color(0xffD8D9DE),
                            fontSize: 1.87 * SizeConfig.heightMultiplier,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const NewArrivalsItems(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
