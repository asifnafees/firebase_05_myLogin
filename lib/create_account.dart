import 'package:firebase_05/auth_service.dart';
import 'package:firebase_05/home_screen.dart';
import 'package:firebase_05/login.dart';
import 'package:flutter/material.dart';
import 'package:firebase_05/ui_helper.dart';
class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green,
        title: Text("Registration Screen"),),
      body: Column( mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiHelper.myTextField("Email", emailController,
              Icons.email_outlined, false),
          UiHelper.myTextField("Password", passwordController,
              Icons.lock_outlined, true),
          UiHelper.myButton(()  async{
              final message = await AuthServices().registration(
                email: emailController.text,
                password: passwordController.text
              );
              if (message!.contains('Success')) {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => const HomeScreen()));
              }
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(message),
                ),
              );
          }, "Create Account")
        ],),
    );
  }
}
