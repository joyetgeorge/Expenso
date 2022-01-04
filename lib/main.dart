import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import './widgets/welcome.dart';
import './widgets/home.dart';

void main() {
  runApp(const Expenso());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Color(0xff1C1C1C),
  ));
}

class Expenso extends StatefulWidget {
  const Expenso({Key? key}) : super(key: key);

  @override
  State<Expenso> createState() => _ExpensoState();
} 

class _ExpensoState extends State<Expenso> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: const Color(0x000fffff),
            elevation: 0,
            title: Container(
              margin: const EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Home',
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                    ),
                  ),
                  const Icon(
                    Icons.notifications,
                    color: Colors.black,
                    size: 30,
                  )
                ],
              ),
            )),
        body: const Home(),
        // body: Welcome(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

