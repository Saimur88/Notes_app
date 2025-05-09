import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
import 'package:notes_app/screens/login_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(child: Text("Sign Up")),
        actions: [
          Icon(Icons.more_vert)
        ],
      ),

      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 300,
                alignment: Alignment.center,
                child: Lottie.asset("assets/animations/signup.json"),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    hintText: 'example@email.com',
                    label: Text("Email"),
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password_outlined),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    border: OutlineInputBorder(),
                    label: Text("Password"),
                  ),
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
              ),
              ElevatedButton(onPressed: (){
                print("Log In Button Pressed");
              },
                  child: Text("Sign in",style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent
                  )
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Forgot password"),
              ),
              GestureDetector(
                  onTap: (){
                    Get.to(()=> LoginScreen());
                  },
                  child: Text("Already have an account Log in")),


            ],
          ),
        ),
      ),

    );
  }
}
