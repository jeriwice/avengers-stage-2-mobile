<<<<<<< HEAD
import 'package:brainy/page/home.dart';
=======
import 'package:brainy/onboarding.dart';
>>>>>>> 3589b852ff5dfc60af01a419d6e3bb8c297d6244
import 'package:brainy/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

int onBoardCount;
main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();
  onBoardCount = pref.getInt("Initial");
  await pref.setInt("Initial", 1);

  runApp(MainThread());
}

class MainThread extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themeLight,
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      home: //SplashScrren() The Android Native Splash is in Use,
      HomeScreen(),
=======
        initialRoute: onBoardCount == 0 || onBoardCount == null
            ? 'onBoarding'
            : 'WelcomeScreen',
        routes: { "onBoarding": (context) => OnBoarding(),
          "WelcomeScreen": (context) => WelcomeScreen()}

        //home: WelcomeScreen(), //SplashScrren() The Android Native Splash is in Use,
>>>>>>> 3589b852ff5dfc60af01a419d6e3bb8c297d6244
    );
  }
}