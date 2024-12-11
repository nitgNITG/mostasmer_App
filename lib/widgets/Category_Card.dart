import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String image;
  final String Name;
  const CategoryCard({super.key, required this.image, required this.Name,});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("$image",
          width:MediaQuery.of(context).size.width*0.2,

          ),
        Text("$Name",style: TextStyle(
          fontWeight: FontWeight.bold
        ),),

      ],
    );
  }
}
