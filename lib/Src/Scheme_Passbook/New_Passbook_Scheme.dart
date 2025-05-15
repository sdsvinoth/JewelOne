import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:jewelone/Common_Widgets/Custom_App_Bar.dart';
import 'package:jewelone/Src/FAQ_Ui/FAQ_Screen.dart';
import 'package:jewelone/Src/Scheme_Passbook/Payment_History.dart';
import 'package:jewelone/utilits/Common_Colors.dart';
import 'package:jewelone/utilits/Text_Style.dart';

class NewPassbookScheme extends ConsumerStatefulWidget {
  const NewPassbookScheme({super.key});

  @override
  ConsumerState<NewPassbookScheme> createState() => _NewPassbookSchemeState();
}

class _NewPassbookSchemeState extends ConsumerState<NewPassbookScheme> {
  bool backhome = false;
  bool dell = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom_AppBar(
        isNav: true,
        isTwoLine: false,
        title1: 'Scheme passbook',
        title2: '',
        actionLogo: 'info.svg',
        isWhite: false,
        ActiononTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Faq_Screen()));
        },
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'DIGIGOLD SCHEME',
                        style: TextStyle(
                          fontFamily: 'JosefinSans',
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: gradient1,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            color: Colors.red[50],
                          ),
                          child: const Column(
                            children: [
                              SizedBox(height: 20),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 18.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Vinoth Kumar',
                                          style: TextStyle(
                                            fontFamily: 'JosefinSans',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          'APP25JODG239165',
                                          style: TextStyle(
                                            fontFamily: 'JosefinSans',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          'Total Amount Paid',
                                          style: TextStyle(
                                            fontFamily: 'JosefinSans',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          '100',
                                          style: TextStyle(
                                            fontFamily: 'JosefinSans',
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 10),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 18.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Saved Weight',
                                          style: TextStyle(
                                            fontFamily: 'JosefinSans',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          '0.015g',
                                          style: TextStyle(
                                            fontFamily: 'JosefinSans',
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          'Benefit on Maturity',
                                          style: TextStyle(
                                            fontFamily: 'JosefinSans',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          '0.001g',
                                          style: TextStyle(
                                            fontFamily: 'JosefinSans',
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                            ],
                          ),
                        ),
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            color:
                                gradient1, // Replace `gradient1` with actual color or gradient if needed
                          ),
                          child: Stack(
                            children: [
                              Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/sha1.png',
                                  height: 50,
                                  width: 50,
                                ),
                                const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Reward Earned',
                                      style: TextStyle(
                                        fontFamily: 'JosefinSans',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      '0g',
                                      style: TextStyle(
                                        fontFamily: 'JosefinSans',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                            ],),

                        ),
                        Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                            color: Colors.white,
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.black12,
                                blurRadius: 15.0,
                                spreadRadius: 10.0,
                                offset: Offset(0.0, 0.0),
                              ),
                            ],
                          ),
                          child: const Column(
                            children: [
                              SizedBox(height: 30),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Date of Joining',
                                        style: TextStyle(
                                          fontFamily: 'JosefinSans',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        '15-MAY-2023',
                                        style: TextStyle(
                                          fontFamily: 'JosefinSans',
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        'Date of Maturity',
                                        style: TextStyle(
                                          fontFamily: 'JosefinSans',
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Text(
                                        '10-Apr-2024',
                                        style: TextStyle(
                                          fontFamily: 'JosefinSans',
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(height: 10),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
               Column(
                    children: [
                      Text('Total weight include Benefit on Maturity*',style: Black22,)
                    ],
                  ),
                  Container(
                    decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  dell = true;
                                  backhome = false;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: dell ? Colors.red : Colors.transparent, // Fill red on tap
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.red),
                                ),
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Payment History',
                                      style: TextStyle(
                                        fontFamily: 'JosefinSans',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: dell ? Colors.white : Colors.black, // Text changes
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  backhome = true;
                                  dell = false;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: backhome ? Colors.red : Colors.transparent,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.red),
                                ),
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Reward',
                                      style: TextStyle(
                                        fontFamily: 'JosefinSans',
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: backhome ? Colors.white : Colors.black, // Text changes
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const PaymentHistory(),
                ],
              ),
            ),
          ),
          Positioned(
            top: 160,
            right: 35,
            child: Container(
              width: 90,
              height: 90,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amber,
              ),
              alignment: Alignment.center,
              child: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Total\nGold Saved",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'JosefinSans',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 3),
                  Text(
                    "0.016 g",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                      fontFamily: 'JosefinSans',
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],),


    );
  }
}
