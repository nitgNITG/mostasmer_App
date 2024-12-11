import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:mostasmer/screens/ResetPassword/reset_password.dart';
import 'dart:async';
import '../../widgets/App_Button.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  late Timer _timer;
  int _remainingTime = 60;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    setState(() {
      _remainingTime = 60;
    });
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingTime > 0) {
        setState(() {
          _remainingTime--;
        });
      } else {
        _timer.cancel();
      }
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios_new),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                const SizedBox(height: 20),
                Center(
                  child: Column(
                    children: [
                      Image.asset('assets/onboarding.png', width: 100, height: 160),
                      const SizedBox(height: 25),
                      Text(
                        'Enter OTP'.tr(),
                        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(height: 10),
                      Center(
                        child: Text(
                          'OTP code has been sent to\nxyz@hotmail.com'.tr(),
                          style: const TextStyle(color: Color(0XFF8B8B8B), fontSize: 14),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 25),
                      OtpTextField(
                        numberOfFields: 4,
                        borderColor: Color(0xFF512DA8),
                        showFieldAsBox: true,
                        onCodeChanged: (String code) {
                          // Handle validation or checks here if needed
                        },
                        onSubmit: (String verificationCode) {
                          print("Entered OTP: $verificationCode");
                        },
                      ),
                      const SizedBox(height: 20),
                      _remainingTime > 0
                          ? Text(
                        ' The OTP will expire in $_remainingTime',
                        style: const TextStyle(color: Color(0xff2AB09C), fontSize: 16,fontWeight: FontWeight.bold),
                      )
                          : RichText(
                        text: TextSpan(
                          text: "Didn’t receive it? ",
                          style: const TextStyle(color: Colors.black, fontSize: 14),
                          children: [
                            TextSpan(
                              text: "Please Resend",
                              style: const TextStyle(color: Color(0xff2AB09C), fontSize: 14, fontWeight: FontWeight.bold),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  _startTimer();
                                },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                    ],
                  ),
                ),
                Center(
                  child: CustomButton(
                    text: 'Submit OTP'.tr(),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ResetPassword()));
                      print('Submit OTP button pressed');
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}