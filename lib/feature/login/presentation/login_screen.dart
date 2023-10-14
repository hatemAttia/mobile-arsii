import 'package:arsi/core/component/app_text_field.dart';
import 'package:arsi/core/route/app_route_name.dart';
import 'package:arsi/core/theme/app_color.dart';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';



class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top,
          bottom: MediaQuery.of(context).padding.bottom,
          left: 24,
          right: 24,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                width: MediaQuery.of(context).size.width,
                height: 250,
                fit: BoxFit.contain,
                image: const AssetImage("assets/arsilog.png"),
              ),
              Text(
                "Login",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AppTextField(
                    prefix: Icon(Icons.alternate_email_rounded),
                    hint: "Email Address",
                    textInputAction: TextInputAction.done,
                  ),
                  SizedBox(height: 24),
                  AppTextField(
                    obscureText: true,
                    prefix: Icon(Icons.lock_outline_rounded),
                    suffix: Icon(Icons.remove_red_eye_outlined),
                    hint: "Password",
                    textInputAction: TextInputAction.done,
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      AppRouteName.forgotPassword,
                    );
                  },
                  child: const Text("Forgot Password ?"),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 64,
                child: ElevatedButton(
                  onPressed: () {
                    
                
                  
                          Navigator.pushReplacementNamed(
                            context,
                            AppRouteName.home,
                          );
                        
                  
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  child: const Text("Login"),
                ),
              ),
              const SizedBox(height: 10),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: Divider()),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Text("OR"),
                  ),
                  Expanded(child: Divider()),
                ],
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 64,
                child: OutlinedButton.icon(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  icon: const Image(
                    image: AssetImage("assets/ic_google.png"),
                    width: 32,
                    height: 32,
                  ),
                  label: const Text("Login with Google"),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't have an Account ? ",
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                        text: "Register here!",
                        style: Theme.of(context)
                            .textTheme
                            .button
                            ?.copyWith(color: AppColor.primaryColor),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(
                              context,
                              AppRouteName.register,
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
