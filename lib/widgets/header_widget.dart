import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black54,
                      offset: Offset(0, 2),
                      blurRadius: 4)
                ]),
            child: Row(
              children: const [
                SizedBox(width: 10),
                Icon(
                  Icons.search,
                  color: Color(0xffCDD4DD),
                ),
                SizedBox(width: 6),
                Text(
                  'Search',
                  style: TextStyle(color: Color(0xffCDD4DD)),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/avatar_profile.png',
            height: 50,
          ),
        ],
      ),
    );
  }
}
