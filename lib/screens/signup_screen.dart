import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
import 'package:notes_app/screens/login_screen.dart';

class SignupScreen extends StatelessWidget {
  TextEditingController userNameController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController emailIdController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  User? currentUser = FirebaseAuth.instance.currentUser;

   SignupScreen({super.key});

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
          child: Container(
            margin: EdgeInsets.only(top: 70),
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
                    controller: userNameController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: 'Alex88',
                      label: Text("Username"),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: phoneNoController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.phone),
                      hintText: '+8801000000000',
                      label: Text("Phone"),
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextField(
                    controller: emailIdController,
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
                    controller: passwordController,
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
                  var userName = userNameController.text.trim();
                  var userEmail = emailIdController.text.trim();
                  var userPhone = phoneNoController.text.trim();
                  var userPass = passwordController.text.trim();

                  if (userEmail.isEmpty || userPass.isEmpty || userName.isEmpty){

                    Get.snackbar('Blank Input', 'PLease fill all the required fields', backgroundColor: Colors.red);
                        return;

                  }

                  FirebaseAuth.instance.createUserWithEmailAndPassword(
                      email: userEmail, password: userPass).then((onValue)=> {
                        log('Successfuly User Created'),
                    FirebaseFirestore.instance.collection("users").doc().set({
                      'createdAt' : DateTime.now(),
                      'userName' : userName,
                      'userEmail' : userEmail,
                      'userPass' : userPass,
                      'userId' : currentUser!.uid,


                    })
                  });
                },
                    child: Text("Sign in",style: TextStyle(color: Colors.white),),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent
                    )
                ),
                GestureDetector(
                    onTap: (){
                      Get.to(()=> LoginScreen());
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text("Already have an account Log in"),
                    )),


              ],
            ),
          ),
        ),
      ),

    );
  }
}
