import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sushi_app/components/button.dart';
import 'package:sushi_app/models/food.dart';
import 'package:sushi_app/models/shop.dart';
import 'package:sushi_app/themes/colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  void removeFromCart(Food food, BuildContext context) {
    final shop = context.read();

    shop.removeFromCart(food);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
        builder: (context, value, child) => Scaffold(
              backgroundColor: primaryColor,
              appBar: AppBar(
                title: Text(
                  "My Cart",
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                centerTitle: true,
                backgroundColor: primaryColor,
                foregroundColor: Colors.white,
              ),
              body: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                        itemCount: value.cart.length,
                        itemBuilder: (context, index) {
                          // get food from cart
                          final Food food = value.cart[index];

                          // get food name
                          final String foodName = food.name;

                          // get food price
                          final double foodPrice = food.price;

                          return Container(
                            decoration: BoxDecoration(
                              color: secondaryColor,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: const EdgeInsets.only(
                                left: 20, right: 20, top: 20),
                            child: ListTile(
                              title: Text(
                                foodName,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(
                                '$foodPrice',
                                style: TextStyle(
                                  color: Colors.grey[200],
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              trailing: IconButton(
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.white,
                                ),
                                onPressed: () => removeFromCart(food, context),
                              ),
                            ),
                          );
                        }),

                    // pay Button
                  ),
                  Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: MyButton(
                      text: "pay now",
                      onTap: () {},
                    ),
                  )
                ],
              ),
            ));
  }
}
