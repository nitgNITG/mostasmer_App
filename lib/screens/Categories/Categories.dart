import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mostasmer/widgets/App_Bar.dart';
import 'package:mostasmer/widgets/Category_Card.dart';

import '../Category Details/Category_Details.dart';
class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 160,),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Use SizedBox or Expanded to provide constraints for GridView
                    SizedBox(
                      height: MediaQuery.of(context).size.height - 160, // Set height constraint
                      child: GridView.builder(
                          // Adjust padding for the entire grid
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // Number of columns in the grid
                          crossAxisSpacing: 2.0, // Space between columns
                          mainAxisSpacing: 8.0, // Space between rows
                        ),
                        itemCount: 1, // Set the number of items in the grid
                        itemBuilder: (context, index) {
                          return  InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => CategoryDetails(),));
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15,right: 15),
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Container(

                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                      borderRadius: BorderRadius.circular(10)

                                    ),
                                  ),

                                  const Padding(
                                    padding: EdgeInsets.only(top: 30),
                                    child: CategoryCard(
                                      image: 'assets/images/060eca3ba8d0af9b74efa7b588902ea2.gif',  // Example image
                                      Name: 'Electronics',  // Example category name
                                    ),
                                  ),

                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AppBar_com(),
          ],
        ),
      ),
    );
  }
}
