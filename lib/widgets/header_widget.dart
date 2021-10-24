import 'package:ecomerce_store1/helpers/size_config.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: 3.74 * SizeConfig.heightMultiplier),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 6.23 * SizeConfig.heightMultiplier,
            width: 63.7 * SizeConfig.widthMultiplier,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:
                    BorderRadius.circular(6.23 * SizeConfig.heightMultiplier),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0, 2),
                      blurRadius: 4)
                ]),
            child: Row(
              children: [
                SizedBox(width: 2.55 * SizeConfig.widthMultiplier),
                const Icon(
                  Icons.search,
                  color: Color(0xffCDD4DD),
                ),
                SizedBox(width: 1.53 * SizeConfig.widthMultiplier),
                const Text(
                  'Search',
                  style: TextStyle(color: Color(0xffCDD4DD)),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/avatar_profile.png',
            height: 6.23 * SizeConfig.heightMultiplier,
          ),
        ],
      ),
    );
  }
}
