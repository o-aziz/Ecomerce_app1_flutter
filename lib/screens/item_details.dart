import 'package:ecomerce_store1/helpers/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemDetails extends StatelessWidget {
  final String imgUrl;
  final String itemName;
  const ItemDetails({Key? key, required this.imgUrl, required this.itemName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1B203A),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 86 * SizeConfig.heightMultiplier,
                padding: EdgeInsets.symmetric(
                    vertical: 3.7 * SizeConfig.heightMultiplier,
                    horizontal: 5 * SizeConfig.widthMultiplier),
                alignment: Alignment.bottomLeft,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft:
                        Radius.circular(3.7 * SizeConfig.heightMultiplier),
                    bottomRight:
                        Radius.circular(3.7 * SizeConfig.heightMultiplier),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          itemName,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 6.3 * SizeConfig.heightMultiplier,
                          width: 13 * SizeConfig.widthMultiplier,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xffFF8A00),
                          ),
                          child: const Icon(
                            Icons.favorite_outline,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'US \$149.89',
                      style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            color: const Color(0xffFF7BAC),
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    SizedBox(height: 0.6 * SizeConfig.heightMultiplier),
                    Text(
                      'These garments contain recycled fiber drawn from our in-house productions, meanings we transform waste into a resource .',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                          color: Colors.black,
                          fontSize: 1.9 * SizeConfig.heightMultiplier),
                    ),
                    SizedBox(height: 1.9 * SizeConfig.heightMultiplier),
                    Text(
                      'COLOR',
                      style: Theme.of(context).textTheme.caption!.copyWith(
                          fontSize: 2.2 * SizeConfig.heightMultiplier),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 5.6 * SizeConfig.heightMultiplier,
                          width: 11.5 * SizeConfig.widthMultiplier,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff2D3B5A)),
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 2.6 * SizeConfig.widthMultiplier),
                        Container(
                          height: 5.6 * SizeConfig.heightMultiplier,
                          width: 11.5 * SizeConfig.widthMultiplier,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffFF3F73)),
                        ),
                        SizedBox(width: 2.6 * SizeConfig.widthMultiplier),
                        Container(
                          height: 5.6 * SizeConfig.heightMultiplier,
                          width: 11.5 * SizeConfig.widthMultiplier,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffFF8B01)),
                        ),
                        SizedBox(width: 2.6 * SizeConfig.widthMultiplier),
                        Container(
                          height: 5.6 * SizeConfig.heightMultiplier,
                          width: 11.5 * SizeConfig.widthMultiplier,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff693ADE)),
                        ),
                        SizedBox(width: 2.6 * SizeConfig.widthMultiplier),
                        Container(
                          height: 5.6 * SizeConfig.heightMultiplier,
                          width: 11.5 * SizeConfig.widthMultiplier,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffDADADA)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 50 * SizeConfig.heightMultiplier,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: const Color(0xffECECF0),
                  borderRadius: BorderRadius.only(
                    bottomLeft:
                        Radius.circular(5 * SizeConfig.heightMultiplier),
                    bottomRight:
                        Radius.circular(5 * SizeConfig.heightMultiplier),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black45,
                      offset: Offset(0, 3),
                      blurRadius: 3,
                    )
                  ],
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Image.asset(
                        imgUrl,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    Positioned(
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Icons.arrow_back,
                        ),
                      ),
                      top: 35,
                      left: 20,
                    ),
                    const Positioned(
                      child: Icon(
                        Icons.work_outline_rounded,
                      ),
                      top: 35,
                      right: 20,
                    ),
                    Positioned(
                      child: Row(
                        children: [
                          Icon(
                            Icons.circle_rounded,
                            size: 2 * SizeConfig.heightMultiplier,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.circle_outlined,
                            size: 2 * SizeConfig.heightMultiplier,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.circle_outlined,
                            size: 2 * SizeConfig.heightMultiplier,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.circle_outlined,
                            size: 2 * SizeConfig.heightMultiplier,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      bottom: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(
                vertical: 2.5 * SizeConfig.heightMultiplier,
                horizontal: 5 * SizeConfig.widthMultiplier),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'RECOMMEND',
                  style: TextStyle(
                    color: const Color(0xff545B74),
                    fontSize: 1.9 * SizeConfig.heightMultiplier,
                  ),
                ),
                SizedBox(height: 1.3 * SizeConfig.heightMultiplier),
                Row(
                  children: [
                    Container(
                      height: 5 * SizeConfig.heightMultiplier,
                      width: 10.2 * SizeConfig.widthMultiplier,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            1.6 * SizeConfig.heightMultiplier),
                        image: const DecorationImage(
                            image: AssetImage('assets/belted_dress.jpg'),
                            fit: BoxFit.fitWidth),
                      ),
                    ),
                    SizedBox(width: 1.3 * SizeConfig.widthMultiplier),
                    Container(
                      height: 5 * SizeConfig.heightMultiplier,
                      width: 10.2 * SizeConfig.widthMultiplier,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            1.6 * SizeConfig.heightMultiplier),
                        image: const DecorationImage(
                            image: AssetImage('assets/floral_dress.jpg'),
                            fit: BoxFit.fitWidth),
                      ),
                    ),
                    SizedBox(width: 1.3 * SizeConfig.widthMultiplier),
                    Container(
                      height: 5 * SizeConfig.heightMultiplier,
                      width: 10.2 * SizeConfig.widthMultiplier,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            1.6 * SizeConfig.heightMultiplier),
                        image: const DecorationImage(
                            image: AssetImage('assets/mini_dress.jpg'),
                            fit: BoxFit.fitWidth),
                      ),
                    ),
                    SizedBox(width: 1.3 * SizeConfig.widthMultiplier),
                    Container(
                      height: 5 * SizeConfig.heightMultiplier,
                      width: 10.2 * SizeConfig.widthMultiplier,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            1.6 * SizeConfig.heightMultiplier),
                        image: const DecorationImage(
                            image: AssetImage('assets/contrasting_satin.jpg'),
                            fit: BoxFit.fitWidth),
                      ),
                    ),
                    SizedBox(width: 3.8 * SizeConfig.widthMultiplier),
                    Text(
                      '+32 more',
                      style: TextStyle(
                        color: const Color(0xff545B74),
                        fontSize: 1.5 * SizeConfig.heightMultiplier,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
