import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app/screens/signup_screen.dart';

import 'login_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blueAccent,
              Colors.white,
            ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),

          ),
          child:Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset('assets/images/welcome.png',width: 250,),

                  const SizedBox(height: 20,),

                  Text("Welcome To Notes App",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.josefinSans(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),

                  const SizedBox(height: 50),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                          },
                          child: Text('Log In',style: GoogleFonts.lato(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),)),
                      const Text("or",style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),),
                      TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupScreen()));

                          },
                          child: Text('Sign Up',style: GoogleFonts.lato(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue,
                          ),)),
                    ],
                  ),

                ],
              ),
            ],
          )
        ),
      ),
    );
  }
}
