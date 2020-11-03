import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:narabhaya/screens/login.dart';

// class HomeScreen extends StatefulWidget {
//   HomeScreen({Key key}) : super(key: key);

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.all(32),
//         child: Column(
//           children: const <Widget>[
//             PermissionStatusWidget(),
//             Divider(height: 32),
//             ServiceEnabledWidget(),
//             Divider(height: 32),
//             GetLocationWidget(),
//             Divider(height: 32),
//             ListenLocationWidget(),
//           ],
//         ),
//       ),
//     );
//   }
// }

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: NeumorphicFloatingActionButton(
          child: Icon(Icons.settings), onPressed: () {}),
      body: Center(
        child: NeumorphicButton(
          padding: EdgeInsets.all(110),
          style: NeumorphicStyle(
            shape: NeumorphicShape.convex,
            boxShape: NeumorphicBoxShape.circle(),
          ),
          onPressed: () {},
          child: NeumorphicText(
            "SOS",
            style: NeumorphicStyle(
              depth: 4,
              color: Color(0xffff4757),
            ),
            textStyle: NeumorphicTextStyle(
              fontSize: 38,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
