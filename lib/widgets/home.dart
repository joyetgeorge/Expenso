import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart';

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
              Analytics()
            ],
          ),
        )
      ],
    );
  }

  Container Analytics() {
    return Container(
      height: 200,
      margin: const EdgeInsets.only(top: 20, left: 25, right: 25),
      decoration: BoxDecoration(
        color: const Color(0xff343434),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        margin: const EdgeInsets.all(10),
        child: BarChart(BarChartData(
            borderData: FlBorderData(
                border: const Border(
              top: BorderSide.none,
              right: BorderSide.none,
              left: BorderSide.none,
              bottom: BorderSide.none,
            )),
            barGroups: [
              BarChartGroupData(x: 1, barRods: [
                BarChartRodData(y: 5, width: 15, colors: [Colors.amber]),
              ]),
              BarChartGroupData(x: 2, barRods: [
                BarChartRodData(y: 9, width: 15, colors: [Colors.amber]),
              ]),
              BarChartGroupData(x: 3, barRods: [
                BarChartRodData(y: 4, width: 15, colors: [Colors.amber]),
              ]),
              BarChartGroupData(x: 4, barRods: [
                BarChartRodData(y: 2, width: 15, colors: [Colors.amber]),
              ]),
              BarChartGroupData(x: 5, barRods: [
                BarChartRodData(y: 13, width: 15, colors: [Colors.amber]),
              ]),
              BarChartGroupData(x: 6, barRods: [
                BarChartRodData(y: 17, width: 15, colors: [Colors.amber]),
              ]),
              BarChartGroupData(x: 6, barRods: [
                BarChartRodData(y: 12, width: 15, colors: [Colors.amber]),
              ]),

            ])),
      ),
    );
  }
}
