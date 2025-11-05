import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'screens/splash_screen.dart';
import 'screens/login_screen.dart';
import 'screens/sender_dashboard_screen.dart';
import 'screens/traveler_dashboard_screen.dart';

void main() {
  runApp(const SmartLinkApp());
}

class SmartLinkApp extends StatelessWidget {
  const SmartLinkApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [], // Add providers for auth, localization, etc.
      child: MaterialApp(
        title: 'SmartLink – Travel into Earning',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [Locale('en'), Locale('hi'), Locale('mr')],
        initialRoute: '/',
        routes: {
          '/': (context) => const SplashScreen(),
          '/login': (context) => const LoginScreen(),
          '/sender': (context) => const SenderDashboardScreen(),
          '/traveler': (context) => const TravelerDashboardScreen(),
        },
      ),
    );
  }
}
