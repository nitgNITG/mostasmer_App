import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mostasmer/widgets/App_Bar.dart';
import 'package:mostasmer/widgets/Category_Card.dart';
import 'package:mostasmer/widgets/brand_card.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  //Adv
                  Container(
                      width: MediaQuery.of(context).size.width*0.9,
                      child: Image.asset('assets/images/61pIdqNyXzL._SX3000_ 1.png')),
                  const SizedBox(height: 15,),
                  // brand List
                  Container(
                    color: Colors.white,

                    child: const Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Brand listing',style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),),
                              Text('View all',style: TextStyle(
                                  decoration:  TextDecoration.underline,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),),

                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15),
                          child: BrandCard(image: 'assets/images/image (3).png',Name: 'Amazon',),
                        ),
                      ],
                    ),
                  ),
                  //Category List
                  const SizedBox(height: 15,),
                  const Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Category listing',style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                            ),),
                            Text('View all',style: TextStyle(
                                decoration:  TextDecoration.underline,
                                fontSize: 14,
                                fontWeight: FontWeight.bold
                            ),),

                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: CategoryCard(image: 'assets/images/060eca3ba8d0af9b74efa7b588902ea2.gif',Name: 'Electronics',),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: CategoryCard(image: 'assets/images/11f310ab5d3d29dc9f43e18a40f75732.gif',Name: 'Phones',),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: CategoryCard(image: 'assets/images/6ed7d2e96bce23ff1a699c699062a95d.gif',Name: 'Clothes',),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: CategoryCard(image: 'assets/images/d83ed32c125299c0aad6dce598e08a51.gif',Name: 'Bags',),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15),
                              child: CategoryCard(image: 'assets/images/d19d3c2b4c72d83ddd9a4715b2f8b668.gif',Name: 'Shoes',),
                            ),


                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  // Best Selling
                  Container(
                    color: Colors.white,
                    child: const Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Best Selling Brands',style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),),

                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: BrandCard(image: 'assets/images/image (4).png',Name: 'Carrefour',),
                              ),


                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25,),
                  //New Arrivals
                  Container(
                    color: Colors.white,
                    child: const Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('New Arrivals',style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),),

                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: BrandCard(image: 'assets/images/image 8.png',Name: 'Adidas shop',),
                              ),


                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25,),
                  //Latest Offer
                  Container(
                    color: Colors.white,
                    child: const Column(
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Latest Offer',style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold
                              ),),

                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: BrandCard(image: 'assets/images/image 8.png',Name: 'Adidas shop',),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15),
                                child: BrandCard(image: 'assets/images/image (4).png',Name: 'Carrefour',),
                              ),

                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 25,),

                ],


              ),
            ),
          ),
          const AppBar_com(),
        ],
      ),
    );
  }
}
