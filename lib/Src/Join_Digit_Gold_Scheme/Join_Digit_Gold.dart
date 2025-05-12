import 'package:flutter/material.dart';
import 'package:jewelone/Common_Widgets/Common_Card.dart';
import 'package:jewelone/utilits/Common_Colors.dart';
import 'package:jewelone/utilits/Text_Style.dart';

class JoinDigitGold extends StatefulWidget {
  static const routeName = '/join';

  const JoinDigitGold({super.key});

  @override
  State<JoinDigitGold> createState() => _JoinDigitGoldState();
}

class _JoinDigitGoldState extends State<JoinDigitGold> {
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
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: white1,
                                    border: Border.all(color: Colors.yellow),
                                  ),
                                  child: GestureDetector(
                                    onTap: () => _showBottomSheet1(context),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Key Benefits",
                                          style: follow,
                                        ),
                                        const Icon(Icons.arrow_forward_ios, size: 16,color: Colors.black,),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  padding: const EdgeInsets.all(10),
                                  margin:
                                      const EdgeInsets.symmetric(horizontal: 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: white1,
                                    border: Border.all(color: Colors.yellow),
                                  ),
                                  child: GestureDetector(
                                    onTap: () => _showBottomSheet2(context),
                                    child:  Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Know More",
                                          style:planST,
                                        ),
                                        const Icon(Icons.arrow_forward_ios, size: 16,color: Colors.black,),
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
                                       Text('Amount',style: planST5),
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
                                      Icon(Icons.import_contacts_sharp),
                                    ],
                                  ),

                                  // Grams Column
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Grams',style: planST5),
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
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('You Get: 5'),
                                  SizedBox(width: 10),
                                  Text('|', style: TextStyle(fontSize: 24)),
                                  Text('You Get: 0.001 gms'),
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
                        const Text('Quantity you saved'),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: white1,
                            border: Border.all(color: Colors.yellow),
                          ),
                          width: 150,
                          child: const TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: '0.116 gms',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            'Benefits subject to redemption after date of maturity'),
                        SizedBox(height: 10),
                        Text('Name Your Scheme'),
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
                      child: const TextField(
                        decoration: InputDecoration(
                          labelText: 'Enter Your Name',
                          labelStyle: TextStyle(color: Colors.grey),
                          // visible label color
                          border: InputBorder.none,
                        ),
                        style:
                            TextStyle(color: Colors.black), // Input text color
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Date of Maturity: 30-Apr-2025'),
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
                        const Expanded(
                          child: Row(
                            children: [
                              Text('I agree to the scheme '),
                              Text('Terms and Conditions',
                                  style: TextStyle(color: Colors.yellow)),
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
                                          const JoinDigitGold()));
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
                          child: Text('Play Now', style: gramST),
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

// BOTTOM SHEET 1
class Bottombar1 extends StatelessWidget {
  const Bottombar1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Key Benefits',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Icon(Icons.check_circle, color: Colors.green),
              SizedBox(width: 10),
              Expanded(child: Text('Save gold in small quantities.')),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Icon(Icons.check_circle, color: Colors.green),
              SizedBox(width: 10),
              Expanded(child: Text('Pay anytime, anywhere.')),
            ],
          ),
        ],
      ),
    );
  }
}

// BOTTOM SHEET 2
class Bottombar2 extends StatelessWidget {
  const Bottombar2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'Know More',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.circle, size: 8),
                SizedBox(width: 10),
                Expanded(
                    child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit.')),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.circle, size: 8),
                SizedBox(width: 10),
                Expanded(child: Text('Pay any time, flexible deposits.')),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.circle, size: 8),
                SizedBox(width: 10),
                Expanded(child: Text('1 to 75 Days - 5% benefit')),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
