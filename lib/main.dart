import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:test_app/view/home/home_screen.dart';
import 'package:test_app/view/layout/main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test',
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            fontFamily: 'Poppins'
        ),
        builder: (context, widget) =>
            ResponsiveWrapper.builder(
              BouncingScrollWrapper.builder(context, widget!),
              maxWidth: 1250,
              minWidth: 375,
              defaultScale: true,
              breakpoints: const [
                ResponsiveBreakpoint.autoScale(375, name: 'SM'),
                ResponsiveBreakpoint.autoScale(800, name: 'MD'),
                ResponsiveBreakpoint.autoScale(1000, name: 'LG'),
                ResponsiveBreakpoint.autoScale(1250, name: 'XL'),
                ResponsiveBreakpoint.autoScale(2460, name: '2XL'),
              ],
            ),
        debugShowCheckedModeBanner: false,
        home: const MainScreen()
    );
  }
}
