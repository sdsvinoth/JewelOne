import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jewelone/Src/Home_DashBoard_Ui/Home_DashBoard_Screen.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            const SizedBox(height: 100),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 1, color: Colors.yellow),
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
                                const SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("APP25JODG239165",
                                            style: walletT31),
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
                                                  height: 20,
                                                  decoration:
                                                      const BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.all(
                                                            Radius.circular(5)),
                                                    color: Colors.green,
                                                    shape: BoxShape
                                                        .rectangle, // or BoxShape.circle if you want a dot
                                                  ),
                                                  child: Text(
                                                    "Active",
                                                    style: walletT3?.copyWith(
                                                      fontFamily: 'JosefinSans',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.white,
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
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.brown[700],
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
                                      color: Colors.brown[700],
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
                            const Divider(
                                color: Colors.yellow, thickness: 1, height: 20),
                            Padding(
                              padding: const EdgeInsets.only(top: 1, left: 30, right: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      // Circle container: use fixed size but no Expanded
                                      Container(
                                        width: 110,
                                        height: 110,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                        alignment: Alignment.center,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            const SizedBox(height: 10),
                                            Text(
                                              "Total\nGold Saved",
                                              style: UserST.copyWith(
                                                color: Colors.black,
                                                fontSize: 15,
                                                fontFamily: 'JosefinSans',
                                                fontWeight: FontWeight.w400,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            const SizedBox(height: 5),
                                            Text(
                                              "0.016 g",
                                              style: UserST.copyWith(
                                                color: Colors.red,
                                                fontSize: 20,
                                                fontFamily: 'JosefinSans',
                                                fontWeight: FontWeight.bold,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        ),
                                      ),

                                      const SizedBox(width: 5),

                                      // Middle column: use Flexible or Expanded for flexible width
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: [
                                                Text("Date of Maturity", style: walletT3),
                                              ],
                                            ),
                                            const SizedBox(height: 5),
                                            const Text(
                                              '10-Apr-2025',
                                              style: TextStyle(fontSize: 12, color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),

                                      const SizedBox(width: 5),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
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
                                            const SizedBox(height: 10),
                                            Center(child: Text("0.0%", style: walletT3)),
                                            const SizedBox(height: 5),
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
                                            const SizedBox(height: 10),
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
                                onTap: () {},
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
                                onTap: () {
                                  // Add your logic here
                                },
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
