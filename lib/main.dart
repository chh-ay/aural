import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:google_fonts/google_fonts.dart';
import 'globals.dart' as globals;
import 'login/login.page.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  Future.delayed(
    const Duration(milliseconds: 1250),
    () => {FlutterNativeSplash.remove()},
  );
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
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: globals.globalBottomNavigationColor,
          ),
          iconTheme: const IconThemeData(
            color: Color(globals.defaultColor),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            iconColor: Color(globals.defaultColor),
          )),
      home: const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
