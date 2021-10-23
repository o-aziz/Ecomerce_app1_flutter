import 'package:ecomerce_store1/screens/screens.dart';
import 'package:flutter/material.dart';

class NewArrivalsItems extends StatelessWidget {
  const NewArrivalsItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          _item(context, 'assets/belted_dress.jpg', 'Soft feel belted dress',
              'GRAY MARL 6 5644/470', 'US \$149.89'),
          const SizedBox(height: 15),
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
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                imgUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(width: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(dressName, style: Theme.of(context).textTheme.headline6),
              Text(dressInfo, style: Theme.of(context).textTheme.caption),
              const SizedBox(height: 8),
              Text(
                dressPrice,
                style: const TextStyle(color: Color(0xffFF952C)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
