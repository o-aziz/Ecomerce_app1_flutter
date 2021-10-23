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
                height: 690,
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                alignment: Alignment.bottomLeft,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
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
                          height: 50,
                          width: 50,
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
                    const SizedBox(height: 5),
                    Text(
                      'These garments contain recycled fiber drawn from our in-house productions, meanings we transform waste into a resource .',
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(color: Colors.black, fontSize: 15),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      'COLOR',
                      style: Theme.of(context)
                          .textTheme
                          .caption!
                          .copyWith(fontSize: 17),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 45,
                          width: 45,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff2D3B5A)),
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 45,
                          width: 45,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffFF3F73)),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 45,
                          width: 45,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffFF8B01)),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 45,
                          width: 45,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xff693ADE)),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          height: 45,
                          width: 45,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle, color: Color(0xffDADADA)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Color(0xffECECF0),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  boxShadow: [
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
                        children: const [
                          Icon(
                            Icons.circle_rounded,
                            size: 15,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.circle_outlined,
                            size: 15,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.circle_outlined,
                            size: 15,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.circle_outlined,
                            size: 15,
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
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'RECOMMEND',
                  style: TextStyle(
                    color: Color(0xff545B74),
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        image: const DecorationImage(
                            image: AssetImage('assets/belted_dress.jpg'),
                            fit: BoxFit.fitWidth),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        image: const DecorationImage(
                            image: AssetImage('assets/floral_dress.jpg'),
                            fit: BoxFit.fitWidth),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        image: const DecorationImage(
                            image: AssetImage('assets/mini_dress.jpg'),
                            fit: BoxFit.fitWidth),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        image: const DecorationImage(
                            image: AssetImage('assets/contrasting_satin.jpg'),
                            fit: BoxFit.fitWidth),
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Text(
                      '+32 more',
                      style: TextStyle(
                        color: Color(0xff545B74),
                        fontSize: 12,
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
