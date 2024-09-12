import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/img.png'),
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 700,
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(height: 90,),
                   Text('Sign in to continue',style: TextStyle(
                    fontSize: 24,
                       color: Colors.pink.shade900,
                    fontWeight: FontWeight.w800,
                    fontStyle: FontStyle.italic
                  ),),
                  const SizedBox(height: 10,),
                  Text('Vegi',style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    fontSize: 70,
                    fontStyle:FontStyle.italic,
                    shadows: [
                      BoxShadow(
                        blurRadius: 4,
                        spreadRadius: 40,
                        color: Colors.green.shade900,
                        offset: const Offset(5, 5)
                      )
                    ]
                  ),),
                  const SizedBox(height: 270,),
                  SignInButton(
                        Buttons.Google,
                        text: "Sign in with Google",
                        onPressed: () {},
                      ),
                  const SizedBox(height: 3,),
                  SignInButton(
                    Buttons.Apple,
                    text: "Sign in with Google",
                    onPressed: () {},
                  ),
                  const SizedBox(height: 10,),
                   Text('By signing in you are agreeing to our',style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 17,
                      color: Colors.pink.shade900,
                      fontWeight: FontWeight.w800
                  ),),
                   Text('Terms and Privacy Policy',style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 17,
                    color: Colors.pink.shade900,
                    fontWeight: FontWeight.w800
                  ),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
