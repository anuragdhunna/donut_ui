import 'package:flutter/material.dart';

class FoodItems extends StatelessWidget {
  const FoodItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List donutsOnSale = [
      // [ donutFlavor, donutPrice, donutColor, imageName ]
      ["Choco", "95", Colors.brown, "lib/images/chocolate_donut.png"],
      ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
      ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
      ["Ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ];
    return GridView.builder(
      itemCount: donutsOnSale.length,
      // padding: const EdgeInsets.all(9),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (BuildContext context, int index) {
        return FoodTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3],
        );
      },
    );
  }
}

class FoodTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final donutColor;
  final String imageName;

  const FoodTile({
    Key? key,
    required this.donutFlavor,
    required this.donutPrice,
    this.donutColor,
    required this.imageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        decoration: BoxDecoration(
          color: donutColor[50],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerRight,
                child: Container(
                    decoration: BoxDecoration(
                        color: donutColor[200],
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('\$$donutPrice'),
                    ))),
            SizedBox(
              height: 120,
              width: 120,
              child: Image.asset(imageName),
            ),
            Text(
              donutFlavor,
              style:
                  (const TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
            ),
            const Text(
              'Dunkin\'s',
              style: (TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 12)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.pink[400],
                  ),

                  // plus button
                  Icon(
                    Icons.add,
                    color: Colors.grey[800],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
