import 'package:flutter/material.dart';
import 'package:spotify_clone/features/user/presentation/pages/credential/sign_in_page/sign_in_page.dart';
import 'package:spotify_clone/features/user/presentation/pages/credential/sign_up_page/sign_up_with_email.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.black,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: Image.asset('assets/spotify_logo_onboard.png'),
                    ),
                    SizedBox(height: 10,),
                    Text("Sign up to start listening", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
                  ],
                ),
              ),
              Column(
                children: [
                  _logInMethod(
                    backgroundColor: Color(0xFF1ED760),
                    title: "Continue with email",
                    textColor: Colors.black,
                    isImage: false,
                    icon: Icons.mail_outline_sharp,
                    borderColor: Colors.transparent,
                    targetPage: SignUpWithEmail(),
                  ),
                  _logInMethod(
                    backgroundColor: Colors.black,
                    title: "Continue with Google",
                    textColor: Colors.white,
                    isImage: true,
                    logo: "assets/google_logo.png",
                    borderColor: Colors.grey[800],
                  ),
                  _logInMethod(
                    backgroundColor: Colors.black,
                    title: "Continue with Facebook",
                    textColor: Colors.white,
                    isImage: true,
                    logo: "assets/facebook_logo.png",
                    borderColor: Colors.grey[800],
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Text("Already have an account?", style: TextStyle(fontSize: 16, color: Colors.white),),
              SizedBox(height: 10,),
              GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => SignInPage(),
                          transitionDuration: Duration.zero,
                          reverseTransitionDuration: Duration.zero,
                    ));
                  },
                  child: Text("Log in", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),)
              ),
            ],
          ),
        ),
      )
    );
  }
  
  _logInMethod ({String? title, Color? textColor, Color? backgroundColor, IconData? icon, bool? isImage, String? logo, Color? borderColor, Widget? targetPage}) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) => targetPage!,
                  transitionDuration: Duration.zero,
                  reverseTransitionDuration: Duration.zero,
                ));
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: backgroundColor,
            side: BorderSide(width: 1, color: borderColor!),
          ),
          child: Row(
            children: [
              isImage == true ? SizedBox(
                  width: 20,
                  height: 20,
                  child: Image.asset(logo!)
              )
                  : Icon(icon, size: 25, color: Colors.black,),
              Expanded(
                  child: Text(
                      "$title",
                      style: TextStyle(
                          fontSize: 16,
                          color: textColor,
                          fontWeight: FontWeight.bold
                      ),
                    textAlign: TextAlign.center,
                  )
              ),
            ],
          )
      ),
    );
  }
}
