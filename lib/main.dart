import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mchango/screens/on_boarding.dart';
import 'package:mchango/theme/theme_manager.dart';
import 'package:mchango/utils/constants.dart';
import 'package:provider/provider.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';

void main() {
  return runApp(MultiProvider(
        providers: [
          ChangeNotifierProvider<ThemeNotifier>(
            create: (_) => new ThemeNotifier(),
          ),
        ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
      builder: (context, theme, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: theme.getTheme(),
        home: EasySplashScreen(
          logo: Image.asset(
              'assets/images/logo.png'),
          logoWidth: 120,
          // title: Text(
          //   "Title",
          //   style: TextStyle(
          //     fontSize: 18,
          //     fontWeight: FontWeight.bold,
          //   ),
          // ),
          backgroundColor: Colors.white,
          showLoader: true,
          loaderColor: primaryColor,
          // loadingText: Text("Loading..."),
          navigator: Onboarding(),
          durationInSeconds: 3,
        )
      ),
    );
  }
}