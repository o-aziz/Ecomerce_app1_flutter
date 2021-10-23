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
              margin: const EdgeInsets.only(top: 5),
              height: 2,
              width: 50,
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
