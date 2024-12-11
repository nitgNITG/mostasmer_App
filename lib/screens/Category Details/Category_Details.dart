import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mostasmer/widgets/App_Bar2.dart';

class CategoryDetails extends StatelessWidget {
  const CategoryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
     body: Column(
       children: [
         AppBar2(PageName: 'Electronics'),
         Container(
           decoration: BoxDecoration(
             color: Color(0xFFF0F2F5)
           ),
           child: Padding(
             padding:
             EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 10.0),
             child: Stack(
               alignment: AlignmentDirectional(0.0, 0.0),
               children: [
                 Align(
                   alignment: AlignmentDirectional(-1.0, 0.0),
                   child: InkWell(
                     splashColor: Colors.transparent,
                     focusColor: Colors.transparent,
                     hoverColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onTap: () {
           
                     },
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(8.0),
                       child: Image.asset(
                         'assets/images/image (3).png',
                         width: 100.0,
                         height: 60.0,
                         fit: BoxFit.cover,
                       ),
                     ),
                   ),
                 ),
                 const Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     Align(
                       alignment: AlignmentDirectional(-1.0, 0.0),
                       child: Padding(
                         padding: EdgeInsetsDirectional.fromSTEB(
                             120.0, 0.0, 0.0, 10.0),
                         child: Text(
                           'Amazon',
                           textAlign: TextAlign.center,
           
                         ),
                       ),
                     ),
                     Align(
                       alignment: AlignmentDirectional(-1.0, 0.0),
                       child: Padding(
                         padding: EdgeInsetsDirectional.fromSTEB(
                             120.0, 0.0, 0.0, 0.0),
                         child: Text(
                           'Up to 12.00%',
                           textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFEF1A2D),
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                           ),
                         ),
                       ),
           
                   ],
                 ),
                 Align(
                   alignment: Alignment.topRight,
                   child: Material(
                     elevation: 5.0,  // Add elevation to make the button appear raised
                     shadowColor: Colors.black.withOpacity(0.2),  // Optional: Adjust the shadow color for the button
                     borderRadius: BorderRadius.circular(50),  // Match the button's border radius
                     child: Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(50),
                         color: Colors.white,  // Button background color
                       ),
                       child: MaterialButton(
                         onPressed: () {},
                         child: Text(
                           'Shop now',
                           style: TextStyle(
                             color: Color(0xFF2AB09C),  // Text color
                             decoration: TextDecoration.underline,  // Underline the text
                             decorationColor: Color(0xFF2AB09C),  // Underline color
                           ),
                         ),
                       ),
                     ),
                   ),
                 )


               ],
             ),
           ),
         ),
         Container(
           decoration: BoxDecoration(
             color:Colors.white
           ),
           child: Padding(
             padding:
             EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 10.0),
             child: Stack(
               alignment: AlignmentDirectional(0.0, 0.0),
               children: [
                 Align(
                   alignment: AlignmentDirectional(-1.0, 0.0),
                   child: InkWell(
                     splashColor: Colors.transparent,
                     focusColor: Colors.transparent,
                     hoverColor: Colors.transparent,
                     highlightColor: Colors.transparent,
                     onTap: () {

                     },
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(8.0),
                       child: Image.asset(
                         'assets/images/image (4).png',
                         width: 100.0,
                         height: 60.0,
                         fit: BoxFit.cover,
                       ),
                     ),
                   ),
                 ),
                 const Column(
                   mainAxisSize: MainAxisSize.min,
                   children: [
                     Align(
                       alignment: AlignmentDirectional(-1.0, 0.0),
                       child: Padding(
                         padding: EdgeInsetsDirectional.fromSTEB(
                             120.0, 0.0, 0.0, 10.0),
                         child: Text(
                           'Carrefour',
                           textAlign: TextAlign.center,

                         ),
                       ),
                     ),
                     Align(
                       alignment: AlignmentDirectional(-1.0, 0.0),
                       child: Padding(
                         padding: EdgeInsetsDirectional.fromSTEB(
                             120.0, 0.0, 0.0, 0.0),
                         child: Text(
                           'Up to 12.00%',
                           textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFFEF1A2D),
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                          ),
                           ),
                         ),
                       ),

                   ],
                 ),
                 Align(
                   alignment: Alignment.topRight,
                   child: Material(
                     elevation: 5.5,  // Add elevation to make the button appear raised
                     shadowColor: Colors.black.withOpacity(0.2),  // Optional: Adjust the shadow color for the button
                     borderRadius: BorderRadius.circular(50),  // Match the button's border radius
                     child: Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(50),
                         color: Colors.white,  // Button background color
                       ),
                       child: MaterialButton(
                         onPressed: () {},
                         child: Text(
                           'Shop now',
                           style: TextStyle(
                             color: Color(0xFF2AB09C),  // Text color
                             decoration: TextDecoration.underline,  // Underline the text
                             decorationColor: Color(0xFF2AB09C),  // Underline color
                           ),
                         ),
                       ),
                     ),
                   ),
                 )


               ],
             ),
           ),
         ),

       ],
     ),
    ));
  }
}
