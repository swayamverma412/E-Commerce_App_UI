import 'package:flutter/material.dart';

import 'components/discount_banner.dart';
import 'components/home_header.dart';
import 'components/popular_product.dart';
import 'components/past_order.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              HomeHeader(),
              DiscountBanner(),
              SizedBox(height: 20),
              PopularProducts(),
              SizedBox(height: 20),
              PastOrders(),
              SizedBox(height: 20),


            ],
          ),
        ),
      ),
    );
  }
}
