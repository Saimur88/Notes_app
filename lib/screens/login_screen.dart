import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:notes_app/screens/recovery_screen.dart';
import 'package:notes_app/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.blueAccent,
            Colors.white,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,)
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.only(top: 150),
                height: 300,
                alignment: Alignment.center,
                child: Lottie.asset("assets/animations/login.json"),
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

              },
                  child: Text("Log in",style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent
              )
              ),
              GestureDetector(
                onTap: (){
                  Get.to(() => RecoveryScreen() );
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Forgot password"),
                ),
              ),
              GestureDetector(
                  onTap: (){
                    Get.to(()=> SignupScreen());
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text("Don't have an account"),
                      SizedBox(width: 5,),
                      Text("Sign Up",style: TextStyle(color: Colors.blueAccent),),
                    ],
                  )),


            ],
          ),
        ),
      ),

    );
  }
}
