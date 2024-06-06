import 'package:flutter/material.dart';
import '../../../models/Cart.dart';

class CartCard extends StatefulWidget {
  const CartCard({
    Key? key,
    required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  _CartCardState createState() => _CartCardState();
}

class _CartCardState extends State<CartCard> {
  int quantity = 0;

  @override
  void initState() {
    super.initState();
    quantity = widget.cart.numOfItem;
  }

  double calculateDiscountedPrice(double price, double discount) {
    return price - (price * discount / 100);
  }

  @override
  Widget build(BuildContext context) {
    double discountPercentage = 20.0; // Example discount percentage
    double discountedPrice =
        calculateDiscountedPrice(widget.cart.product.price, discountPercentage);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          SizedBox(
            width: 88,
            child: AspectRatio(
              aspectRatio: 0.88,
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.asset(widget.cart.product.images[0]),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.cart.product.title,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                  maxLines: 2,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      "\₹${widget.cart.product.price}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "\₹${discountedPrice.toStringAsFixed(2)}",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  "20% off",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFFB30523),
                  ),
                ),
                const SizedBox(height: 8),
                 Row(
                                    children: [
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            quantity += 1; // Increment quantity by 1
                                          });
                                        },
                                        icon: Icon(Icons.add),
                                      ),
                                      Text(
                                        "$quantity", // Display the current quantity
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {
                                          setState(() {
                                            if (quantity > 1) {
                                              quantity -= 1; // Decrement quantity by 1, but ensure it's always at least 1
                                            }
                                          });
                                        },
                                        icon: Icon(Icons.remove),
                                      ),
                                    ],
                                  ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
