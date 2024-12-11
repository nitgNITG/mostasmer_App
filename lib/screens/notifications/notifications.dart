import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mostasmer/widgets/App_Bar2.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const AppBar2(PageName:" notifications",),
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFD7EEF5),
                ),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Your order has accepted from Amazon ',
                              style: TextStyle(
                                color: Colors.black
                              ),
                            ),
                            TextSpan(
                              text: '“open order details”',
                              style: TextStyle(
                                color: Color(0xFF2AB09C),
                                fontSize: 18.0,
                              )
                            )
                          ],

                        ),
                      ),
                      const Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            'Just Now',
                            style: TextStyle(
                              color: Color(0xFF939393)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: const BoxDecoration(

                ),
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Your order has accepted from Amazon ',
                              style: TextStyle(
                                color: Colors.black
                              ),
                            ),
                            TextSpan(
                              text: '“open order details”',
                              style: TextStyle(
                                color: Color(0xFF2AB09C),
                                fontSize: 18.0,
                              )
                            )
                          ],

                        ),
                      ),
                      const Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            '7 hours ago',
                            style: TextStyle(
                              color: Color(0xFF939393)
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
