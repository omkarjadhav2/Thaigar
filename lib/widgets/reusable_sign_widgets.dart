import 'package:flutter/material.dart';

class EmailPasswordTextField extends StatelessWidget {
  final String hintText;
  final String text;
  final IconData icon;
  final bool isPasswordType;
  final TextEditingController controller;

  EmailPasswordTextField({
    required this.hintText,
    required this.icon,
    required this.isPasswordType,
    required this.controller,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPasswordType,
      enableSuggestions: !isPasswordType,
      autocorrect: !isPasswordType,
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white.withOpacity(0.9)),
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Icon(icon,color: Colors.white70
        ),
        labelText: text,
        labelStyle: TextStyle(color: Colors.white.withOpacity(0.9)),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: Colors.white.withOpacity(0.3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(width: 0,style: BorderStyle.none)
        )
      ),
      keyboardType: isPasswordType
      ? TextInputType.visiblePassword
      :TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }
}
class SigninSignupButton extends StatelessWidget {
  final BuildContext context;
  final String? text;
  final Function onTap;
  final bool islogin;

  SigninSignupButton({
    required this.context,
    this.text,
    required this.onTap,
    required this.islogin});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      margin: EdgeInsets.fromLTRB(0, 10, 0, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(90)
      ),
      child: ElevatedButton(
        onPressed: (){
          onTap();
        },
        child: Text(
          islogin? "Log In" :"Sign up",
          style: const TextStyle(
            color: Colors.black87, 
            fontWeight: FontWeight.bold,
            fontSize: 16
          ),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith((states){
            if(states.contains(MaterialState.pressed)){
              return Colors.black26;
            }
            return Colors.white;
          }),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))
        ),
      ),
    );
  }
}