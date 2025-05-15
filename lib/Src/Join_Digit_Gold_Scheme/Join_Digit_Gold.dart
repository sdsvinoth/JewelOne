import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jewelone/Common_Widgets/Common_Card.dart';
import 'package:jewelone/Src/Join_Digit_Gold_Scheme/Bottom_Bar/Bottom_Bar_1.dart';
import 'package:jewelone/Src/Join_Digit_Gold_Scheme/Bottom_Bar/Bottom_Bar_2.dart';
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
  int? selectedIndex;

  void _showBottomSheet1(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => const Bottombar1(),
    );
  }

  void _showBottomSheet2(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) => const Bottombar2(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              const SizedBox(height: 30),
              Column(
                children: [
                  const SizedBox(height: 60),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [gradient1, gradient2],
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 30),
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
                              style: walletT3,
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        // Gold Rate Card
                        Container(
                          height: 100,
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: white1,
                            border: Border.all(color: Colors.yellow),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/sha1.png',
                                height: 90,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Today's Gold Rate 22KT",
                                    style: follow,
                                  ),
                                  Text(
                                    "6,680/g",
                                    style: planST5,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () => _showBottomSheet1(context),
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: white1,
                                    border: Border.all(color: Colors.yellow),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Key Benefits",
                                        style: follow,
                                      ),
                                      const Icon(
                                        Icons.arrow_forward_ios,
                                        size: 16,
                                        color: Colors.black,
                                      ),
                                    ],
                                  ),
                                ),),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () => _showBottomSheet2(context),
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: white1,
                                    border: Border.all(color: Colors.yellow),
                                  ),

                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Know More",
                                          style: planST,
                                        ),
                                        const Icon(
                                          Icons.arrow_forward_ios,
                                          size: 16,
                                          color: Colors.black,
                                        ),
                                      ],
                                    ),
                                ),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Enter the Weight or Amount you wish to save',
                            style: planST),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                            border: Border.all(color: Colors.yellow),
                          ),
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Amount', style: planST5),
                                      const SizedBox(height: 10),
                                      SizedBox(
                                        width: 150,
                                        child: TextField(
                                          decoration:
                                              boxWalletCardInputDecoration(
                                                  '100'),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Grams', style: planST5),
                                      const SizedBox(height: 10),
                                      SizedBox(
                                        width: 150,
                                        child: TextField(
                                          decoration:
                                              boxWalletCardInputDecoration(
                                                  '0.015 gms'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'You Get:',
                                          style: Black22,
                                        ),
                                        const TextSpan(
                                          text: '5',
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
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Quantity you saved', style: planST),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: white1,
                            border: Border.all(color: Colors.yellow),
                          ),
                          width: 150,
                          child: SizedBox(
                            width: 150,
                            child: TextField(
                              decoration:
                                  boxWalletCardInputDecoration('0.116 gms'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                                'Benefits subject to redemption after date of maturity',
                                style: Black22),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Text('Name Your Scheme', style: planST),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[100], // White background
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Enter Your Name',
                          labelStyle: Black22,
                          // visible label color
                          border: InputBorder.none,
                        ),
                        style: const TextStyle(
                            color: Colors.black), // Input text color
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Date of Maturity: 30-Apr-2025',
                            style: TextStyle(
                                fontFamily: 'JosefinSans',
                                fontSize: 14,
                                color: Font_Primary_Color,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
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
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedIndex = 0;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DigitGoldCard()));
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedIndex == 0
                                ? Colors.yellow
                                : Colors.white,
                            foregroundColor: Colors.black,
                            side: BorderSide(color: Colors.yellow.shade700),
                            elevation: 2,
                          ),
                          child: Text('Cancel', style: gramST),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedIndex = 1;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                      const NewPassbookScheme()));
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: selectedIndex == 1
                                ? Colors.yellow
                                : Colors.white,
                            foregroundColor: Colors.black,
                            side: BorderSide(color: Colors.yellow.shade700),
                            elevation: 2,
                          ),
                          child: Text('Pay Now', style: gramST),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}




