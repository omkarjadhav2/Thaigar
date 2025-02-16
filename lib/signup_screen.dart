import 'package:flutter/material.dart';
import 'homepage.dart';
import 'widgets/reusable_sign_widgets.dart';
class SignUpScreen extends StatefulWidget {

  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _usernameTextController=TextEditingController();
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
                    height: 100.0,
                    child: Text(
                      'sign up',
                      style: TextStyle(
                        fontSize: 54.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,), // SizedBox

                  EmailPasswordTextField(
                    hintText: 'Enter UserName',
                    icon: Icons.person_2_outlined,
                    isPasswordType: false,
                    controller: _usernameTextController,
                    text: "UserName",

                  ),
                  SizedBox(height: 20),
                  EmailPasswordTextField(
                    hintText: 'Enter Email',
                    icon: Icons.person_2_outlined,
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
                  SigninSignupButton(context:context ,islogin: false,onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=> Homepage()));
                  },
                  ),
                ],
              )
          ),
        ),
      ),
    );
  }
}
