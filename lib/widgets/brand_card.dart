import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  final String image;
  final String Name;
  const BrandCard({super.key, required this.image, required this.Name,});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("$image",
        width:MediaQuery.of(context).size.width*0.25,

         ),
        Text("$Name"),
        Text("Up to 12.00%",style: TextStyle(
          color: Colors.red
        ),),
      ],
    );
  }
}
