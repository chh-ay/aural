import 'package:aural/auth/auth.page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'globals.dart' as globals;
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Future.delayed(
      const Duration(milliseconds: 1250), () => {FlutterNativeSplash.remove()});

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: globals.globalMaterialTextColor,
          ),
        ),
        fontFamily: GoogleFonts.poppins().fontFamily,
        canvasColor: globals.globalBackgroundColor,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: globals.globalBottomNavigationColor,
          unselectedItemColor: globals.globalMaterialTextColor.shade400,
          selectedIconTheme:
              const IconThemeData(color: globals.globalMaterialDefaultColor),
          selectedItemColor: globals.globalMaterialDefaultColor,
        ),
        cardColor: globals.globalMaterialDefaultColor.shade50,
      ),
      home: const AuthPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
