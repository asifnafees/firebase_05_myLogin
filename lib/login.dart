import 'package:firebase_05/auth_service.dart';
import 'package:firebase_05/create_account.dart';
import 'package:firebase_05/ui_helper.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController emailController =TextEditingController();
  final TextEditingController passwordController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,
      title: Text("Login Screen"),),
      body: Column( mainAxisAlignment: MainAxisAlignment.center,
        children: [
        UiHelper.myTextField("Email", emailController,
            Icons.email_outlined, false),
        UiHelper.myTextField("Password", passwordController,
            Icons.lock_outlined, true),
        UiHelper.myButton(() {
        }, "Login"),
        UiHelper.myRowText("Do You have an Account?", "SignUP", () async{
          final message = await AuthServices().registration(
            email: emailController.text,
            password: passwordController.text,
          );
          if (message!.contains('Success')) {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => const Login()));
          }
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(message),
            ),
          );
        },)
      ],),
    );
  }
}
