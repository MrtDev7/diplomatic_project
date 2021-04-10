import 'constants/theme.dart';
import 'ui/screens/splash_screen.dart';

import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diplomatic Academy',
      debugShowCheckedModeBanner: false,
      theme: kappTheme(context),
      home: SplashScreen(),
    );
  }
}
