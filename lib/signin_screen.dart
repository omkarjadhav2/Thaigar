import 'package:flutter/material.dart';
import 'package:thaigar/widgets/reusable_sign_widgets.dart';

import 'signup_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController=TextEditingController();
  TextEditingController _emailTextController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/backblack3.jpg"),
              fit: BoxFit.cover)

        ),
        child: SingleChildScrollView(
          child: Padding(padding: EdgeInsets.all(20),
          child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20),
              height: 200.0,
              child: Text(
                'Welcome \n Thaigar',
                style: TextStyle(
                  fontSize: 54.0,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: 20),
            EmailPasswordTextField(
              hintText: 'Enter Email',
              icon: Icons.email,
              isPasswordType: false,
              controller: _emailTextController,
              text: "Email",

            ),
            SizedBox(height: 20),
            EmailPasswordTextField(
              text: "Password",
              hintText: 'Enter Password',
              icon: Icons.lock,
              isPasswordType: true,
              controller: _passwordTextController,
            ),
            SizedBox(height: 20),
            SigninSignupButton(context:context ,islogin: true,onTap: (){},
            ),
            signUpOtion()

          ],
          )
          ),
        ),
      ),

    );
  }
  Row signUpOtion(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      const Text("Don't have account?",
          style: TextStyle(color: Colors.white70)),
        GestureDetector(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=> SignUpScreen()));
          },
          child: const Text(
            "Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),

          ), // Text,
        )
      ],
    );
  }
}
