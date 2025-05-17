import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jewelone/Common_Widgets/Common_Card.dart';
import 'package:jewelone/Src/Join_Digit_Gold_Scheme/Bottom_Bar/Bottom_Bar_1.dart';
import 'package:jewelone/Src/Join_Digit_Gold_Scheme/Bottom_Bar/Bottom_Bar_2.dart';
import 'package:jewelone/Src/Join_Digit_Gold_Scheme/Bottom_Bar/Common_bar.dart';
import 'package:jewelone/Src/Join_Digit_Gold_Scheme/Digit_Gold_Card.dart';
import 'package:jewelone/Src/Scheme_Passbook/New_Passbook_Scheme.dart';
import 'package:jewelone/utilits/Common_Colors.dart';
import 'package:jewelone/utilits/Text_Style.dart';

class JoinDigitGold extends ConsumerStatefulWidget {
  const JoinDigitGold({super.key});

  @override
  ConsumerState<JoinDigitGold> createState() => _JoinDigitGoldState();
}

class _JoinDigitGoldState extends ConsumerState<JoinDigitGold> {
  bool agreeToTerms = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white2,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [gradient1, gradient2],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  Row(
                    children: [
                      const SizedBox(width: 10),
                      Container(
                        width: 25,
                        height: 25,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: white1,
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back_ios_new,
                              size: 16, color: Colors.black),
                          onPressed: () => Navigator.pop(context),
                          splashRadius: 16,
                          padding: EdgeInsets.zero,
                          constraints: const BoxConstraints(),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        "Join DigitGold Scheme",
                        style: TextStyle(
                            fontSize: 17,
                            color: white1,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          height: 100,
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: white1,
                            border: Border.all(color: Colors.yellow),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(width: 95),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Today's Gold Rate 22KT",
                                        style: follow),
                                    Text("₹6,680/g",
                                        style: TextStyle(
                                            fontSize: 25,
                                            color: gradient2,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: ClipOval(
                            child: SizedBox(
                              width: 150,
                              height: 150,
                              child: Image.asset(
                                'lib/assets/goldk.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () => showCustomBottomSheet1(
                                context, const Bottombar1()),
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: white1,
                                border: Border.all(color: Colors.yellow),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Key Benefits", style: follow),
                                  const Icon(Icons.arrow_forward_ios,
                                      size: 16, color: Colors.black),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: () => showCustomBottomSheet2(
                                context, const Bottombar2()),
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: white1,
                                border: Border.all(color: Colors.yellow),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Know More", style: planST),
                                  const Icon(Icons.arrow_forward_ios,
                                      size: 16, color: Colors.black),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text('Enter the Weight or Amount you wish to save',
                      style: planST),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      border: Border.all(color: gradient2),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Amount', style: planST5),
                                const SizedBox(height: 10),
                                SizedBox(
                                  height: 45,
                                  width: 100,
                                  child: TextField(
                                    decoration:
                                        boxWalletCardInputDecoration1('100'),
                                  ),
                                ),
                              ],
                            ),

                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 30),
                                Icon(Icons.swap_horiz_outlined,
                                    color: Colors.black),
                              ],
                            ),

                            // Grams Column
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Grams', style: planST5),
                                const SizedBox(height: 10),
                                SizedBox(
                                  height: 45,
                                  width: 100,
                                  child: TextField(
                                    decoration: boxWalletCardInputDecoration1(
                                        '0.015 gms'),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'You Get:',
                                    style: Black22,
                                  ),
                                  const TextSpan(
                                    text: '₹5',
                                    style: TextStyle(
                                        fontFamily: 'JosefinSans',
                                        fontSize: 15,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text('|',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.grey)),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'You Get: ',
                                    style: Black22,
                                  ),
                                  const TextSpan(
                                    text: '0.001 gms',
                                    style: TextStyle(
                                        fontFamily: 'JosefinSans',
                                        fontSize: 15,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Quantity you saved', style: planST),
                  const SizedBox(width: 30),
                  SizedBox(
                    height: 45,
                    width: 100,
                    child: TextField(
                      decoration: boxWalletCardInputDecoration('0.116 gms'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('*Benefits subject to redemption after date of maturity',
                      style: Black22),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                children: [
                  Text('Name Your Scheme', style: planST),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: white1,
                    border: Border.all(width: 1, color: grey5),
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Your Name',
                    hintStyle: Black22,
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 16),
                  ),
                  style: const TextStyle(color: Colors.black),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal:28),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('*Date of Maturity: 30-Apr-2025',
                      style: TextStyle(
                          fontSize: 14,
                          color: Font_Primary_Color,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Checkbox(
                    value: agreeToTerms,
                    onChanged: (value) {
                      setState(() {
                        agreeToTerms = value ?? false;
                      });
                    },
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Text('I agree to the scheme ', style: Black22),
                        Text('Terms and Conditions', style: planST5),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color:  Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.shade400),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DigitGoldCard(),
                              ),
                            );
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Text('Cancel',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color:  Colors.black,
                            )),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: appGradient,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.shade400),
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const NewPassbookScheme(),
                              ),
                            );
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text('Pay Now',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
