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

  List<bool> _showDetailsList =
      List.generate(3, (_) => false); // Track expand state for 5 items

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
      body: SingleChildScrollView(
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
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 20.0,
                      spreadRadius: 1.0,
                      offset: Offset(0.0, 0.0),
                    ),
                  ],
                ),
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  crossAxisAlignment: CrossAxisAlignment.end,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  crossAxisAlignment: CrossAxisAlignment.end,
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
                        color: Color(0xFFA51E23), // gradient1 replacement
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
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
                                const SizedBox(width: 10),
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
                          Positioned(
                            top: -10,
                            right: 25,
                            child: ClipOval(
                              child: Container(
                                width: 90,
                                height: 90,
                                color: Colors.amber,
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
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
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
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Column(
                children: [
                  Text(
                    'Total weight include Benefit on Maturity*',
                    style: Black22,
                  )
                ],
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
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
                              color: dell ? Colors.red : Colors.transparent,
                              // Fill red on tap
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
                                    color: dell
                                        ? Colors.white
                                        : Colors.black, // Text changes
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
                                    color: backhome
                                        ? Colors.white
                                        : Colors.black, // Text changes
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
              const PaymentHistory(),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                padding: const EdgeInsets.all(10),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _showDetailsList[index] = !_showDetailsList[index];
                      });
                    },
                    child: Column(
                      children: [
                        Container(
                          padding: _showDetailsList[index] ? const EdgeInsets.all(10) : EdgeInsets.zero,
                          margin: const EdgeInsets.only(bottom: 15),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: _showDetailsList[index]
                                ? Border.all(color: Colors.red) // visible border when expanded
                                : Border.all(color: Colors.white, width: 3),
                            boxShadow:  [
                              BoxShadow(
                                color: Colors.white70,
                                blurRadius: 5,
                                offset: Offset(0, 1),
                              ),
                            ],// no border when collapsed
                          ),

                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Expanded(
                                    child: Text(
                                      "2023-10-01",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      "₹ 100",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      "0.5 gm",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      "Success",
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ],
                              ),
                              if (_showDetailsList[index])
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Divider(),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Payment Details", style: TextStyle(fontWeight: FontWeight.bold)),
                                            SizedBox(height: 4),
                                            Text("21-06-2024, 05:17PM"),
                                          ],
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Text("Transaction ID", style: TextStyle(fontWeight: FontWeight.bold)),
                                            SizedBox(height: 4),
                                            Text("435765908902"),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Order ID: 43654364576"),
                                        Text("Payment Mode: Card"),
                                      ],
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      "Text debited amount if any will be credited to your bank account for this failed payment.",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ],
                    )

                  );
                },
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Container(
                    height: 50,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                          colors: [
                            gradient1,
                            gradient2,
                          ]),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                            child: Text(
                          'Pay Now',
                          style: TextStyle(
                            fontFamily: 'JosefinSans',
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor:  Colors.white,
//       appBar: Custom_AppBar(
//         isNav: true,
//         isTwoLine: false,
//         title1: 'Scheme passbook',
//         title2: '',
//         actionLogo: 'info.svg',
//         isWhite: false,
//         ActiononTap: () {
//           Navigator.push(
//               context, MaterialPageRoute(builder: (context) => Faq_Screen()));
//         },
//       ),
//       body:
//           SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.all(10),
//               child: Column(
//                 children: [
//                   const Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         'DIGIGOLD SCHEME',
//                         style: TextStyle(
//                           fontFamily: 'JosefinSans',
//                           fontSize: 18,
//                           fontWeight: FontWeight.w600,
//                           color: gradient1,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 20),
//                   Padding(
//                     padding: const EdgeInsets.all(10),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius:  BorderRadius.circular(10),
//                         color: Colors.white,
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.black12,
//                             blurRadius: 20.0,
//                             spreadRadius: 1.0,
//                             offset: Offset(0.0, 0.0),
//                           ),
//                         ],
//                       ),
//                       child: Column(
//                         children: [
//                           Container(
//                             decoration: BoxDecoration(
//                               borderRadius: const BorderRadius.only(
//                                 topLeft: Radius.circular(10),
//                                 topRight: Radius.circular(10),
//                               ),
//                               color: Colors.red[50],
//                             ),
//                             child: const Column(
//                               children: [
//                                 SizedBox(height: 20),
//                                 Padding(
//                                   padding: EdgeInsets.symmetric(horizontal: 18.0),
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Text(
//                                             'Vinoth Kumar',
//                                             style: TextStyle(
//                                               fontFamily: 'JosefinSans',
//                                               fontSize: 14,
//                                               fontWeight: FontWeight.w400,
//                                               color: Colors.black,
//                                             ),
//                                           ),
//                                           Text(
//                                             'APP25JODG239165',
//                                             style: TextStyle(
//                                               fontFamily: 'JosefinSans',
//                                               fontSize: 14,
//                                               fontWeight: FontWeight.w400,
//                                               color: Colors.black,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                       Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.end,
//                                         children: [
//                                           Text(
//                                             'Total Amount Paid',
//                                             style: TextStyle(
//                                               fontFamily: 'JosefinSans',
//                                               fontSize: 14,
//                                               fontWeight: FontWeight.w400,
//                                               color: Colors.black,
//                                             ),
//                                           ),
//                                           Text(
//                                             '100',
//                                             style: TextStyle(
//                                               fontFamily: 'JosefinSans',
//                                               fontSize: 14,
//                                               fontWeight: FontWeight.bold,
//                                               color: Colors.black,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(height: 10),
//                                 Padding(
//                                   padding: EdgeInsets.symmetric(horizontal: 18.0),
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.start,
//                                         children: [
//                                           Text(
//                                             'Saved Weight',
//                                             style: TextStyle(
//                                               fontFamily: 'JosefinSans',
//                                               fontSize: 14,
//                                               fontWeight: FontWeight.w400,
//                                               color: Colors.black,
//                                             ),
//                                           ),
//                                           Text(
//                                             '0.015g',
//                                             style: TextStyle(
//                                               fontFamily: 'JosefinSans',
//                                               fontSize: 14,
//                                               fontWeight: FontWeight.bold,
//                                               color: Colors.black,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                       Column(
//                                         crossAxisAlignment:
//                                             CrossAxisAlignment.end,
//                                         children: [
//                                           Text(
//                                             'Benefit on Maturity',
//                                             style: TextStyle(
//                                               fontFamily: 'JosefinSans',
//                                               fontSize: 14,
//                                               fontWeight: FontWeight.w400,
//                                               color: Colors.black,
//                                             ),
//                                           ),
//                                           Text(
//                                             '0.001g',
//                                             style: TextStyle(
//                                               fontFamily: 'JosefinSans',
//                                               fontSize: 14,
//                                               fontWeight: FontWeight.bold,
//                                               color: Colors.black,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 SizedBox(height: 20),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             decoration: const BoxDecoration(
//                               borderRadius: BorderRadius.only(
//                                 topLeft: Radius.circular(10),
//                                 topRight: Radius.circular(10),
//                               ),
//                               color: Color(0xFFA51E23), // gradient1 replacement
//                             ),
//                             child: Stack(
//                               clipBehavior: Clip.none,
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Row(
//                                     children: [
//                                       Image.asset(
//                                         'assets/sha1.png',
//                                         height: 50,
//                                         width: 50,
//                                       ),
//                                       const SizedBox(width: 10),
//                                       const Column(
//                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                         children: [
//                                           Text(
//                                             'Reward Earned',
//                                             style: TextStyle(
//                                               fontFamily: 'JosefinSans',
//                                               fontSize: 14,
//                                               fontWeight: FontWeight.w400,
//                                               color: Colors.white,
//                                             ),
//                                           ),
//                                           Text(
//                                             '0g',
//                                             style: TextStyle(
//                                               fontFamily: 'JosefinSans',
//                                               fontSize: 14,
//                                               fontWeight: FontWeight.w400,
//                                               color: Colors.white,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 Positioned(
//                                   top: -10,
//                                   right: 25,
//                                   child: ClipOval(
//                                     child: Container(
//                                       width: 90,
//                                       height: 90,
//                                       color: Colors.amber,
//                                       alignment: Alignment.center,
//                                       child: const Column(
//                                         mainAxisSize: MainAxisSize.min,
//                                         children: [
//                                           Text(
//                                             "Total\nGold Saved",
//                                             style: TextStyle(
//                                               color: Colors.black,
//                                               fontSize: 14,
//                                               fontFamily: 'JosefinSans',
//                                               fontWeight: FontWeight.bold,
//                                             ),
//                                             textAlign: TextAlign.center,
//                                           ),
//                                           SizedBox(height: 3),
//                                           Text(
//                                             "0.016 g",
//                                             style: TextStyle(
//                                               color: Colors.red,
//                                               fontSize: 15,
//                                               fontFamily: 'JosefinSans',
//                                               fontWeight: FontWeight.bold,
//                                             ),
//                                             textAlign: TextAlign.center,
//                                           ),
//                                         ],
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           const Column(
//                             children: [
//                               SizedBox(height: 30),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                 children: [
//                                   Column(
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         'Date of Joining',
//                                         style: TextStyle(
//                                           fontFamily: 'JosefinSans',
//                                           fontSize: 14,
//                                           fontWeight: FontWeight.w400,
//                                           color: Colors.black,
//                                         ),
//                                       ),
//                                       Text(
//                                         '15-MAY-2023',
//                                         style: TextStyle(
//                                           fontFamily: 'JosefinSans',
//                                           fontSize: 14,
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.black,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                   Column(
//                                     children: [
//                                       Text(
//                                         'Date of Maturity',
//                                         style: TextStyle(
//                                           fontFamily: 'JosefinSans',
//                                           fontSize: 14,
//                                           fontWeight: FontWeight.w400,
//                                           color: Colors.black,
//                                         ),
//                                       ),
//                                       Text(
//                                         '10-Apr-2024',
//                                         style: TextStyle(
//                                           fontFamily: 'JosefinSans',
//                                           fontSize: 14,
//                                           fontWeight: FontWeight.bold,
//                                           color: Colors.black,
//                                         ),
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                               SizedBox(height: 10),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height:20),
//                   Column(
//                     children: [
//                       Text(
//                         'Total weight include Benefit on Maturity*',
//                         style: Black22,
//                       )
//                     ],
//                   ),
//                   const SizedBox(height:20),
//                   Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       color: Colors.white,
//                       border: Border.all(
//                         color: Colors.grey,
//                       ),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           Expanded(
//                             child: GestureDetector(
//                               onTap: () {
//                                 setState(() {
//                                   dell = true;
//                                   backhome = false;
//                                 });
//                               },
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   color: dell ? Colors.red : Colors.transparent,
//                                   // Fill red on tap
//                                   borderRadius: BorderRadius.circular(10),
//                                   border: Border.all(color: Colors.red),
//                                 ),
//                                 padding: const EdgeInsets.all(10),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                       'Payment History',
//                                       style: TextStyle(
//                                         fontFamily: 'JosefinSans',
//                                         fontSize: 14,
//                                         fontWeight: FontWeight.w400,
//                                         color: dell
//                                             ? Colors.white
//                                             : Colors.black, // Text changes
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(width: 10),
//                           Expanded(
//                             child: GestureDetector(
//                               onTap: () {
//                                 setState(() {
//                                   backhome = true;
//                                   dell = false;
//                                 });
//                               },
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   color: backhome
//                                       ? Colors.red
//                                       : Colors.transparent,
//                                   borderRadius: BorderRadius.circular(10),
//                                   border: Border.all(color: Colors.red),
//                                 ),
//                                 padding: const EdgeInsets.all(10),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                       'Reward',
//                                       style: TextStyle(
//                                         fontFamily: 'JosefinSans',
//                                         fontSize: 14,
//                                         fontWeight: FontWeight.w400,
//                                         color: backhome
//                                             ? Colors.white
//                                             : Colors.black, // Text changes
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                 const PaymentHistory(),
//                   ListView.builder(
//                     itemCount: 5,
//                     padding: const EdgeInsets.all(10),
//                     itemBuilder: (context, index) {
//                       return GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             _showDetailsList[index] = !_showDetailsList[index];
//                           });
//                         },
//                         child: Column(
//                           children: [
//                             Container(
//                               margin: const EdgeInsets.only(bottom: 10),
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(10),
//                                 border: Border.all(color: Colors.red), // Replace with gradient1 if needed
//                               ),
//                               child: const Padding(
//                                 padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
//                                 child: Column(
//                                   children: [
//                                     Row(
//                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         Text("2023-10-01"),
//                                         Text("₹ 100"),
//                                         Text("0.5 gm"),
//                                         Text("Success"),
//                                       ],
//                                     ),
//                                     Divider(color: Colors.grey, thickness: 1),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             if (_showDetailsList[index])
//                               Container(
//                                 padding: const EdgeInsets.all(10),
//                                 margin: const EdgeInsets.only(bottom: 10),
//                                 decoration: BoxDecoration(
//                                   color: Colors.grey.shade100,
//                                   borderRadius: BorderRadius.circular(8),
//                                 ),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     const Row(
//                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         Column(
//                                           crossAxisAlignment: CrossAxisAlignment.start,
//                                           children: [
//                                             Text("Payment Details", style: TextStyle(fontWeight: FontWeight.bold)),
//                                             SizedBox(height: 4),
//                                             Text("21-06-2024, 05:17PM"),
//                                           ],
//                                         ),
//                                         Column(
//                                           crossAxisAlignment: CrossAxisAlignment.end,
//                                           children: [
//                                             Text("Transaction ID", style: TextStyle(fontWeight: FontWeight.bold)),
//                                             SizedBox(height: 4),
//                                             Text("435765908902"),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                     const SizedBox(height: 10),
//                                     const Row(
//                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                       children: [
//                                         Text("Net Banking"),
//                                         Text("Status: Failed"),
//                                       ],
//                                     ),
//                                     const SizedBox(height: 8),
//                                     const Text(
//                                       "Text debited amount if any will be credited to your bank account for this failed payment.",
//                                       style: TextStyle(
//                                         color: Colors.grey,
//                                         fontSize: 12,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                           ],
//                         ),
//                       );
//                     },
//                   ),
//                   const SizedBox(height: 15),
//
//                 ],
//               ),
//             ),
//           ),
//
//
//     );
//   }
// }
