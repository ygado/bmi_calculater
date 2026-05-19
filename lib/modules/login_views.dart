import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/modules/bmi_calculate_views.dart';
import 'package:bmi_calculator/modules/register_views.dart';
import 'package:flutter/material.dart';

import '../shared/component/components.dart';

class LoginViews extends StatefulWidget {
  const LoginViews({super.key});

  @override
  State<LoginViews> createState() => _LoginViewsState();
}

class _LoginViewsState extends State<LoginViews> {
  TextEditingController emailAddress = TextEditingController();
  TextEditingController password = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isPassword = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Form(
        key: formKey,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                defaultText(text: 'Login', color: Colors.blue, size: 50),
                SizedBox(height: 15),
                defaultTextField(
                  controller: emailAddress,
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    print(value);
                  },
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter a valid email';
                    }
                  },
                  text: 'Enter your email',
                  prefix: Icons.email,
                  isPassword: false,
                ),
                SizedBox(height: 15),
                defaultTextField(
                  controller: password,
                  keyboardType: TextInputType.visiblePassword,
                  onChanged: (value) {
                    print(value);
                  },
                  onFieldSubmitted: (value) {
                    print(value);
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter a valid password';
                    }
                  },
                  text: 'Enter Your Password',
                  prefix: Icons.lock,
                  suffix: isPassword ? Icons.visibility_off : Icons.visibility,
                  isPassword: isPassword,
                  suffixOnPressed: () {
                    setState(() {
                      isPassword = !isPassword;
                    });
                  },
                ),
                SizedBox(height: 15),
                defaultMaterialButton(
                  containerColor: Colors.blue,
                  fonSize: 20,
                  width: double.infinity,
                  color: Colors.white,
                  text: 'Login',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      print(emailAddress.text);
                      print(password.text);
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return BmiCalculateViews();
                      }),);

                    }
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    defaultText(
                      text: 'Don\'t have an account?',
                      color: Colors.blue,
                      size: 15,
                    ),
                    defaultMaterialButton(
                      fonSize: 10,
                      text: 'Register Now',
                      color: Colors.blue,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return RegisterViews();
                        }),);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
