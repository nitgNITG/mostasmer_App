import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mostasmer/screens/ForgotPassword/forgot_password.dart';
import 'package:mostasmer/screens/HomePage/Home_page_Screen.dart';
import 'package:mostasmer/screens/SignUpScreen/signup_screen.dart';
import 'package:mostasmer/widgets/App_Button.dart';
import '../../widgets/Custom_BottomSheet.dart';
import '../../widgets/Custom_TextField.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isChecked = false;
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 120,),
                Image.asset('assets/onboarding.png', width: 100, height: 160,),
                const SizedBox(height: 25,),
                Text('Log In'.tr(), style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                const SizedBox(height: 25,),
          
                CustomTextField(
                  controller: _emailController,
                  // labelText: 'Phone Number'.tr(),
                  hintText: 'Email or Mobile Number',
                  prefixIcon: Icons.local_phone_outlined,
                  keyboardType: TextInputType.text,
                ),
                const SizedBox(height: 15,),

                CustomTextField(
                  controller: _passwordController,
                  // labelText: 'Password'.tr(),
                  hintText: 'Password',
                  obscureText: !_isPasswordVisible,
                  prefixIcon: Icons.lock_outline,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                ),
                const SizedBox(height: 20,),
          
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          activeColor: const Color(0xff223F48),
                          value: _isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              _isChecked = value!;
                            });
                          },
                        ),
                        Text('Remember Me'.tr()),
                        // Spacer(),
                      ],
                    ),
                    TextButton(
                      onPressed: () {
                        print('Forgot Password');
                      },
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword()));

                        },
                          child: Text('Forgot Password?'.tr(), style: const TextStyle(color: Color(0xff2AB09C),decoration: TextDecoration.underline))),
                    ),

                  ],
                ),
                const SizedBox(height: 25,),
          
                CustomButton(
                  text: 'Log In'.tr(),
                  onPressed: () {
                    showImageTextBottomSheet(context);
                  },
                ),
                const SizedBox(height: 40,),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don\'t have an account? ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      TextSpan(
                        text: 'Sign Up',
                        style: TextStyle(
                          color: Color(0xff2AB09C),
                          fontSize: 16,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));

                            print('Sign Up tapped');
                          },
                      ),
                    ],
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

void showImageTextBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return CustomBottomSheet(
        imageTextContent: Column(
          children: [
            Image.asset('assets/error.png'),
            const SizedBox(height: 15),
            const Text('Error', style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700)),
            const SizedBox(height: 15),
            const Text('Incorrect Login', style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500)),
            const SizedBox(height: 15),
            const Text('You have 4 out of 5 attempts remaining.', style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xffFF0000))),
            const SizedBox(height: 30),
            CustomButton(text: 'OK', onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePageScreen()));

            })
          ],
        ),
      );
    },
  );
}

