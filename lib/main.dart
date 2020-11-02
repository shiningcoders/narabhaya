import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:narabhaya/resources/auth_methods.dart';
import 'package:narabhaya/screens/home.dart';
import 'package:narabhaya/screens/login.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return NeumorphicApp(
      theme: NeumorphicThemeData(
        baseColor: Color(0xffDBE6E8),
        lightSource: LightSource.topLeft,
        depth: 10,
      ),
      darkTheme: NeumorphicThemeData(
        baseColor: Color(0xFF3E3E3E),
        lightSource: LightSource.topLeft,
        depth: 6,
      ),
      themeMode: ThemeMode.light,
      title: "Narabhaya",
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        // '/search_screen': (context) => SearchScreen(),
      },
      home: SplashScreen(
        'assets/splash.flr',
        CheckScreen(),
        backgroundColor: Colors.white,
        startAnimation: 'Intro',
      ),
    );
  }
}

class CheckScreen extends StatefulWidget {
  @override
  _CheckScreenState createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen> {
  final AuthMethods _authMethods = AuthMethods();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _authMethods.getCurrentUser(),
      builder: (context, AsyncSnapshot<User> snapshot) {
        if (snapshot.hasData) {
          return HomeScreen();
        } else {
          return LoginScreen();
        }
      },
    );
  }
}
