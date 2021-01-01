import 'package:flutter/material.dart';
import 'package:pcn/mainView.dart';
import 'package:pcn/roomView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        home: RoomView(),
        routes: {
          "/MainView": (_) => MainView(),
          "/RoomView": (_) => RoomView(),
        },
      );
}
