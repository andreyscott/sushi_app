import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/components/button.dart';
import 'package:sushi_app/models/food.dart';
import 'package:sushi_app/themes/colors.dart';

class FoodDetails extends StatefulWidget {
  final Food food;

  const FoodDetails({super.key, required this.food});

  @override
  State<FoodDetails> createState() => _FoodDetails();
}

class _FoodDetails extends State<FoodDetails> {
  int quantityCount = 0;

  void decrementQuantity() {
    if (quantityCount > 0) {
      setState(() {
        quantityCount--;
      });
    }
  }

  void incrementQuantity() {
    setState(() {
      setState(() {
        quantityCount++;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('content'),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey[900],
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(children: [
        Expanded(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: ListView(
            children: [
              Image.asset(
                widget.food.imagePath,
                height: 200,
              ),
              const SizedBox(
                height: 25,
              )
              // rating
              ,
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow[700],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '${widget.food.rating}',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                widget.food.name,
                style: GoogleFonts.dmSerifDisplay(fontSize: 28),
              ),
              const SizedBox(
                height: 25,
              )

              //  description
              ,
              Text(
                "Description",
                style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                widget.food.description,
                style:
                    TextStyle(color: Colors.grey[600], fontSize: 14, height: 2),
              ),
            ],
          ),
        )),
        Container(
          color: primaryColor,
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$' '${widget.food.price}',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: secondaryColor, shape: BoxShape.circle),
                          child: IconButton(
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                            onPressed: decrementQuantity,
                          )),

                      SizedBox(
                        width: 30,
                        child: Text(
                          quantityCount.toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                      // plus button

                      Container(
                          decoration: BoxDecoration(
                              color: secondaryColor, shape: BoxShape.circle),
                          child: IconButton(
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                            onPressed: incrementQuantity,
                          ))
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              MyButton(text: "Add to Cart", onTap: () {})
            ],
          ),
        )
      ]),
    );
  }
}
