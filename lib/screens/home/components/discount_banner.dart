import 'package:flutter/material.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: const Color(0xFFEDE3E1), // Updated background color
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              "Minimum 20% off on every product",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black, // Adjust text color if needed
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(width: 20), // Adjust spacing between columns
          Image.asset(
            "assets/images/discount.jpg", // Replace with your image path
            height: 120, // Adjust image height as needed
            width: 120, // Adjust image width as needed
          ),
        ],
      ),
    );
  }
}
