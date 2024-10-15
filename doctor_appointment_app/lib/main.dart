import 'package:hossapp/main_layout.dart';
// import 'package:doctor_appointment_app/models/auth_model.dart';
// import 'package:doctor_appointment_app/screens/auth_page.dart';
// import 'package:doctor_appointment_app/screens/success_booked.dart';
import 'package:hossapp/screens/auth_page.dart';
import 'package:hossapp/utils/config.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //this is for push navigator
  static final navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          navigatorKey: navigatorKey,
          title: "FLutter Doctor App",
          debugShowCheckedModeBanner: false,
        
        theme: ThemeData(
          //pre-define input decoration
          inputDecorationTheme: const InputDecorationTheme(
            focusColor: Config.primaryColor,
            border: Config.outlinedBorder,
            focusedBorder: Config.focusBorder,
            errorBorder: Config.errorBorder,
            enabledBorder: Config.outlinedBorder,
            floatingLabelStyle: TextStyle(color: Config.primaryColor),
            prefixIconColor: Colors.black38,
          ),
          scaffoldBackgroundColor: Colors.white,
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: Config.primaryColor,
            selectedItemColor: Colors.white,
            showSelectedLabels: true,
            showUnselectedLabels: false,
            unselectedItemColor: Colors.grey.shade700,
            elevation: 10,
            type: BottomNavigationBarType.fixed,
          ),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const AuthPage(),
          'main': (context) => const MainLayout(),
        },
        
      );
  }
}