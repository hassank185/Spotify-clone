import 'package:flutter/material.dart';
import 'package:spotify_clone/features/user/presentation/pages/credential/sign_in_page/sign_in_page.dart';
import 'package:spotify_clone/features/user/presentation/pages/credential/sign_up_page/sign_up_page.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 80,
                      height: 80,
                      child: Image.asset('assets/spotify_logo_onboard.png')),
                  SizedBox(height: 20),
                  Text("Millions of songs.", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
                  Text("Free on Spotify.", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => SignUpPage(),
                              transitionDuration: Duration.zero,
                              reverseTransitionDuration: Duration.zero,
                            ));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF1ED760)
                      ),
                      child: Text(
                        "Sign Up for free",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          color: Colors.black,
                        ),
                      )
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      side: BorderSide(width: 1, color: Colors.grey),
                    ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => SignInPage(),
                              transitionDuration: Duration.zero,
                              reverseTransitionDuration: Duration.zero,
                            ));
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          color: Colors.white,
                        ),
                      )
                  ),
                )
              ],
            ),
          )
        ],
      )
    );
  }
}
