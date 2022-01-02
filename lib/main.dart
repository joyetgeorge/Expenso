import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './widgets/welcome.dart';

void main() {
  runApp(Expenso());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xff1C1C1C),
  ));
}

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
