
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Center(child: Text("Log In")),
        actions: [
          Icon(Icons.more_vert)
        ],
      ),

      body: Container(
        child: Column(
          children: [

            Container(
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
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password_outlined),
                  border: OutlineInputBorder(),
                  label: Text("Password"),
                ),
                obscureText: true,
              ),
            ),
            ElevatedButton(onPressed: (){
              print("Log In Button Pressed");
            },
                child: Text("Log in",style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent
            )
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Forgot password"),
            ),
            Text("Don't have an account Sign Up"),


          ],
        ),
      ),

    );
  }
}
