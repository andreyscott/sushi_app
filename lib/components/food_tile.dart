import 'package:flutter/material.dart';

import 'package:sushi_app/models/food.dart';

// import google_fonts as Googlefonts

import 'package:google_fonts/google_fonts.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const FoodTile({super.key, required this.food, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(20),
        ),
        margin: const EdgeInsets.only(left: 25),
        padding: const EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 180,
              width: 180,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(food.imagePath),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              food.name,
              style: GoogleFonts.dmSerifDisplay(
                  fontSize: 20, fontWeight: FontWeight.normal),
            ),
            SizedBox(
              width: 190,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${food.price}',
                      style: GoogleFonts.dmSerifDisplay(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 10),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow[800],
                        ),
                        Text(
                          '${food.rating}',
                          style: GoogleFonts.dmSerifDisplay(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
