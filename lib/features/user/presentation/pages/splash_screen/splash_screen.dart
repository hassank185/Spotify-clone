import 'package:flutter/material.dart';
import 'package:spotify_clone/features/user/presentation/pages/onboarding_screen/onboarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
        const Duration(seconds: 3), () =>
        Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardingScreen(),))
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: SizedBox(
          width: 200,
          height: 200,
            child: Image.asset('assets/spotify_logo_splash.png', fit: BoxFit.cover,)),
      ),
    );
  }
}
