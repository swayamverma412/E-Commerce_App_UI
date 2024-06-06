import 'package:ecommerce_demo/constants.dart';
import 'package:flutter/material.dart';
import 'components/profile_menu.dart';
import 'components/profile_pic.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  const ProfileScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: EdgeInsets.zero,
              elevation: 0,
              backgroundColor: Colors.white,
            ),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: kPrimaryColor,
              size: 20,
            ),
          ),
        ),
        centerTitle: true,
        title: const Text(
          "Cart",
          style: TextStyle(color: kPrimaryColor),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ProfilePic(),
            const SizedBox(height: 20),
            Column(
              children: [
                const Text(
                  "Neha Singh",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "nehasingh23@gmail.com",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            ProfileMenu(
              text: "Personal Information",
              icon: "assets/icons/User Icon.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Verification",
              icon: "assets/icons/badge.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Manage Notifications",
              icon: "assets/icons/Bell.svg",
              press: () {},
            ),
            const SizedBox(height: 30),
            ProfileMenu(
              text: "Change Password",
              icon: "assets/icons/padlock.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Two Factor Authentication",
              icon: "assets/icons/insurance.svg",
              press: () {},
            ),
            const SizedBox(height: 30),
            ProfileMenu(
              text: "Manage Preference",
              icon: "assets/icons/Settings.svg",
              press: () {},
            ),
            const SizedBox(height: 15),
            ProfileMenu(
              text: "Play Store",
              icon: "assets/icons/google-play.svg",
              press: () {},
            ),
            ProfileMenu(
              text: "Instagram",
              icon: "assets/icons/instagram.svg",
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
