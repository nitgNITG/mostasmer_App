import 'package:flutter/material.dart';
import 'package:mostasmer/screens/LoginScreen/login_screen.dart';

import '../../widgets/App_Button.dart';


class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
            },
            child: Text(
              "Skip",
              style: TextStyle(color: Colors.blue, fontSize: 16),
            ),
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        children: [
          buildOnboardingPage(
            image: "assets/image1.png",
            title: "Welcome to App",
            description: "Discover new features to simplify your life.",
            buttonText: "Next",
            onPressed: () => _pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.ease),
          ),
          buildOnboardingPage(
            image: "assets/image2.png",
            title: "Stay Organized",
            description: "Keep track of your tasks and projects effortlessly.",
            buttonText: "Next",
            onPressed: () => _pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.ease),
          ),
          buildOnboardingPage(
            image: "assets/image3.png",
            title: "Get Started",
            description: "Let’s get started and make the most of this app!",
            buttonText: "Get Started",
            onPressed: () {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          ),
        ],
      ),
    );
  }

  Widget buildOnboardingPage({
    required String image,
    required String title,
    required String description,
    required String buttonText,
    required VoidCallback onPressed,
  }) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: 250),
        SizedBox(height: 20),
        Text(
          title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 10),
        Text(
          description,
          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 30),
        CustomButton(
          text: buttonText,
          onPressed: onPressed,
        ),
      ],
    );
  }
}



