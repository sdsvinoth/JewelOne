import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jewelone/Src/Home_DashBoard_Ui/Home_DashBoard_Screen.dart';
import 'package:jewelone/Src/Join_Digit_Gold_Scheme/Bottom_Bar/Bottom_Bar_1.dart';
import 'package:jewelone/Src/Join_Digit_Gold_Scheme/Bottom_Bar/Bottom_Bar_2.dart';
import 'package:jewelone/Src/Join_Digit_Gold_Scheme/Bottom_Bar/Common_bar.dart';
import 'package:jewelone/utilits/Common_Colors.dart';
import 'package:jewelone/utilits/Text_Style.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DigitGoldCard extends ConsumerStatefulWidget {
  const DigitGoldCard({super.key});

  @override
  ConsumerState<DigitGoldCard> createState() => _DigitGoldCardState();
}

class _DigitGoldCardState extends ConsumerState<DigitGoldCard> {
  bool backhome = false;
  bool dell = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: backGroundColor,
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            const SizedBox(height: 80),
            Card(
              elevation: 1,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                decoration: BoxDecoration(
                  color:backGroundColor ,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: Colors.white),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        gradient: appGradient,
                        image: DecorationImage(
                          image: AssetImage('assets/Group.png'),
                          fit: BoxFit.cover,
                          opacity: 0.2,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("APP25JODG239165",
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            )),
                                        Text("VINOTH KUMAR", style: walletT32),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("DIGI GOLD", style: walletT3),
                                        Row(
                                          children: [
                                            Text(
                                              "Status:",
                                              style: walletT3?.copyWith(
                                                fontFamily: 'JosefinSans',
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(width: 6),
                                            Row(
                                              children: [
                                                Container(
                                                  decoration:
                                                       BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(5)),
                                                    color: Colors.green[700],
                                                    shape: BoxShape
                                                        .rectangle, // or BoxShape.circle if you want a dot
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(3),
                                                    child: Text(
                                                      "Active",
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(width: 6),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.brown[600],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            "Weight Saved",
                                            style: walletT3?.copyWith(
                                              fontFamily: 'JosefinSans',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            "0.015 grams",
                                            style: walletT3?.copyWith(
                                              fontFamily: 'JosefinSans',
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.brown[600],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            "Benefit Earned",
                                            style: walletT3?.copyWith(
                                              fontFamily: 'JosefinSans',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            "0.001 grams",
                                            style: walletT3?.copyWith(
                                              fontFamily: 'JosefinSans',
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Divider(color: Colors.yellow, thickness: 1),
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 80,
                                        height: 80,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                        alignment: Alignment.center,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Text(
                                              "Total\nGold Saved",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            Text(
                                              "0.016 g",
                                              style: TextStyle(
                                                color: Colors.red,
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(width: 10),

                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Date of Purchase", style: walletT3),
                                                    Text(
                                                      '10-Apr-2025',
                                                      style: TextStyle(fontSize: 12, color: Colors.white),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 1),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(30),
                                                color: Colors.white,
                                              ),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "Set Target Now",
                                                    style: walletT3.copyWith(color: Colors.red),
                                                    textAlign: TextAlign.center,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Center(child: Text("0.0%", style: walletT3)),
                                            LayoutBuilder(
                                              builder: (context, constraints) {
                                                return LinearPercentIndicator(
                                                  width: constraints.maxWidth,
                                                  lineHeight: 10,
                                                  percent: 0.3,
                                                  progressColor: Colors.amber,
                                                  backgroundColor: Colors.grey[300],
                                                  barRadius: const Radius.circular(10),
                                                  animation: true,
                                                );
                                              },
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => Home_DashBoard_Screen()),
                                                );
                                              },
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.yellow[800],
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(30),
                                                ),
                                              ),
                                              child: Row(
                                                children: [
                                                  Text('Pay Now', style: planST),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () => showCustomBottomSheet1(context, const Bottombar1()),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child:
                                          Text("Key Benefits", style: planST),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const VerticalDivider(
                              color: Colors.grey,
                              thickness: 1,
                            ),
                            Expanded(
                              child: GestureDetector(
                                onTap: () => showCustomBottomSheet2(context, const Bottombar2()),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text("Know More", style: planST),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
