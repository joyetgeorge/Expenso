import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Text(
                  "This Month Spend",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                  ),
                ),
              ),
              Text(
                "₹1,200.11",
                style: GoogleFonts.poppins(fontSize: 40),
              ),
              Container(
                  // color: Color(0xff343434),
                  height: 200,
                  margin: const EdgeInsets.only(top: 20, left: 25, right: 25),
                  decoration: BoxDecoration(
                    color: const Color(0xff343434),
                    borderRadius: BorderRadius.circular(15),
                    // border: Border.all(
                    //   color: Color(0xff343434),
                    // )
                  ))
            ],
          ),
        )
      ],
    );
  }
}
