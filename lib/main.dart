import 'package:flutter/material.dart';

import './widgets/welcome.dart';

void main() => runApp(const Expenso());

class Expenso extends StatelessWidget {
  const Expenso({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Welcome(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
