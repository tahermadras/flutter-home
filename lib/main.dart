import 'package:first_app/screens/custom_widget.dart';
import 'package:first_app/screens/dashboard.dart';
import 'package:first_app/screens/home.dart';
import 'package:first_app/screens/list_view.dart';
import 'package:first_app/screens/list_view_build.dart';
import 'package:first_app/screens/row&col.dart';
import 'package:first_app/screens/stack.dart';
import 'package:flutter/material.dart';

void main() =>
  runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:CustomWidget(),
    );
  }
}

