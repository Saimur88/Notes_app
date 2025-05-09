import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
import 'package:notes_app/screens/login_screen.dart';

class RecoveryScreen extends StatelessWidget {
  const RecoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(child: Text("Recovery")),
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
                child: Lottie.asset("assets/animations/forgot_pass.json"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Enter your email To recieve OTP")),
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

              ElevatedButton(onPressed: (){
                print("Log In Button Pressed");
              },
                  child: Text("Send Code",style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent
                  )
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: GestureDetector(
                    onTap: (){
                      Get.to(()=> LoginScreen());
                    },
                    child: Text("Go back to Log in page")),
              ),


            ],
          ),
        ),
      ),

    );
  }
}
