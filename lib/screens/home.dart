import 'package:flutter/material.dart';
import 'package:narabhaya/screens/login.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: const <Widget>[
            PermissionStatusWidget(),
            Divider(height: 32),
            ServiceEnabledWidget(),
            Divider(height: 32),
            GetLocationWidget(),
            Divider(height: 32),
            ListenLocationWidget(),
          ],
        ),
      ),
    );
  }
}
