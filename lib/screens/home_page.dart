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
              height: 600,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 40,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Featured',
                          style: TextStyle(
                            color: Color(0xff273046),
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          'View all',
                          style: TextStyle(
                            color: Color(0xffD8D9DE),
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const FeaturedItems(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'New arrivals',
                          style: TextStyle(
                            color: Color(0xff273046),
                            fontSize: 30,
                          ),
                        ),
                        Text(
                          'View all',
                          style: TextStyle(
                            color: Color(0xffD8D9DE),
                            fontSize: 15,
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
