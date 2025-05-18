import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
import 'package:notes_app/screens/login_screen.dart';

class RecoveryScreen extends StatelessWidget {
  const RecoveryScreen({super.key});

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
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 150.0),
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

                },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent
                  ),
                    child: Text("Send Code",style: TextStyle(color: Colors.white),),

                ),
                SizedBox(height: 10,),
                GestureDetector(
                    onTap: (){
                      Get.to(()=> LoginScreen());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Go back to"),
                        SizedBox(width: 7,),
                        Text("Log in",style: TextStyle(color: Colors.blueAccent),),
                      ],
                    ),

                ),


              ],
            ),
          ),
        ),
      ),

    );
  }
}
