import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:news_classification_app/pages/auth/login_page.dart';
import 'package:news_classification_app/pages/home/home_page.dart';
import 'package:news_classification_app/widgets/button.dart';
import 'package:news_classification_app/widgets/text_form_field.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
                key: _formKey,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Gap(50),
                    const Text(
                      'Register an account',
                      style: TextStyle(fontSize: 30, fontFamily: 'Poppins'),
                    ),
                    const Gap(30),
                    const Text(
                        'By continuing, you agree to our terms and conditions'),
                     Gap(height * 0.09),
                    TextForm(width: width, height: height),
                    const Gap(20),
                    TextForm(width: width, height: height),
                    const Gap(20),
                    TextForm(width: width, height: height),
                    const Gap(40),
                    button(
                        text: 'Register',
                         onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage()));
                        // if (_formKey.currentState!.validate()) {
                        //   ScaffoldMessenger.of(context).showSnackBar(
                        //     const SnackBar(content: Text('Processing Data')),
                        //   );
                        // }
                      },
                         context: context),
                         const Gap(40),
                         Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                                child: Container(
                                  // width: width * 0.5,
                                  height: 2,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Text('or', style: TextStyle(fontSize: 20),),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 40.0),
                                child: Container(
                                  // width: width * 0.5,
                                  height: 2,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                         ),
                         const Gap(40),
                    button(
                        text: 'Login',
                         onPressed: () {
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                        // if (_formKey.currentState!.validate()) {
                        //   ScaffoldMessenger.of(context).showSnackBar(
                        //     const SnackBar(content: Text('Processing Data')),
                        //   );
                        // }
                      },
                         context: context),
                         const Gap(10),
                    button(
                        text: 'Continue with Google',
                         onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                         context: context),
                         const Gap(10),
                    button(
                        text: 'Continue with facebook',
                         onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                         context: context),
                  ],
                )),
          )
          ),
    );
  }
}
