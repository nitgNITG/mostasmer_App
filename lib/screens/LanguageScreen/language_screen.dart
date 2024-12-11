import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mostasmer/screens/LoginScreen/login_screen.dart';
import 'package:mostasmer/screens/OnBoarding/on_boarding.dart';
import 'package:mostasmer/widgets/App_Button.dart';

class LanguageSelectionPage extends StatefulWidget {
  @override
  _LanguageSelectionPageState createState() => _LanguageSelectionPageState();
}

class _LanguageSelectionPageState extends State<LanguageSelectionPage> {
  String? _selectedLanguage;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (_selectedLanguage == null) {
      _selectedLanguage = context.locale.languageCode;
      context.setLocale(Locale(_selectedLanguage!));
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 120,),
              Image.asset('assets/onboarding.png', width: 100, height: 160,),
              const SizedBox(height: 25,),
              Text('select_language'.tr(), style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              const SizedBox(height: 25,),

              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedLanguage = 'en';
                    context.setLocale(Locale(_selectedLanguage!));
                  });
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Radio<String>(
                        activeColor: Color(0xff2AB09C),
                        value: 'en',
                        groupValue: _selectedLanguage,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedLanguage = value;
                            context.setLocale(Locale(_selectedLanguage!));
                          });
                        },
                      ),
                      const SizedBox(width: 10),
                      Text('English'.tr(),style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff2AB09C)),),
                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedLanguage = 'ar';
                    context.setLocale(Locale(_selectedLanguage!));
                  });
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      Radio<String>(
                        activeColor: Color(0xff2AB09C),
                        value: 'ar',
                        groupValue: _selectedLanguage,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedLanguage = value;
                            context.setLocale(Locale(_selectedLanguage!));
                          });
                        },
                      ),
                      const SizedBox(width: 10),
                      Text('Arabic'.tr(),style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff2AB09C))),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 25,),
              CustomButton(
                  text: 'Select'.tr(),
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  }
              ),
            ],
          ),
        ),
      ),
    );
  }
}
