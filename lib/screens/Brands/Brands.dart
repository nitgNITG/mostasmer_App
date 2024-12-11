import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mostasmer/widgets/App_Bar.dart';
import 'package:mostasmer/widgets/brand_card.dart';

class Brands extends StatelessWidget {
  const Brands({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(

          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: BrandCard(image: 'assets/images/image (3).png', Name:'Amazon' ),
                    ),
                  ],
                ),
              ),
              AppBar_com(),
            ],
          ),
      ),
    );
  }
}
