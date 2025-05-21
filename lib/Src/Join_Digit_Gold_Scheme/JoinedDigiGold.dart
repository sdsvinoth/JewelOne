import 'package:flutter/material.dart';
import 'package:flutter_cashfree_pg_sdk/api/cfpayment/cfwebcheckoutpayment.dart';
import 'package:flutter_cashfree_pg_sdk/api/cfpaymentgateway/cfpaymentgatewayservice.dart';
import 'package:flutter_cashfree_pg_sdk/api/cfsession/cfsession.dart';
import 'package:flutter_cashfree_pg_sdk/utils/cfenums.dart';
import 'package:flutter_cashfree_pg_sdk/utils/cfexceptions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:jewelone/Model/DigiSchemeModel.dart';
import 'package:jewelone/utilits/ApiProvider.dart';
import 'package:jewelone/utilits/Common_Colors.dart';
import 'package:jewelone/utilits/Generic.dart';
import 'package:jewelone/utilits/Loading_Overlay.dart';
import 'package:jewelone/utilits/Text_Style.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class JoinedDigiGold extends ConsumerStatefulWidget {
  DigiSchemeData? digiSchemeData;

  JoinedDigiGold({super.key, required this.digiSchemeData});

  @override
  ConsumerState<JoinedDigiGold> createState() => _JoinedDigiGoldState();
}

class _JoinedDigiGoldState extends ConsumerState<JoinedDigiGold> {
  bool agreeToTerms = false;
  final double progressValue = 0.01; // Example: 60%
  final bool isZero = false;

  TextEditingController? enterAmountText = TextEditingController();
  String? grams = "0.0";
  String? interetAmt = "0.0";
  String? discountGrams = "0.0";
  String? totalGrams = "0.0";

  final CFEnvironment environment = CFEnvironment.SANDBOX;

  @override
  Widget build(BuildContext context) {
    final List<String> labels = ['1', '75', '150', '225', '300'];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: appGradient,
          ),
        ),
        title: const Text(
          'Join DigitGold Scheme',
          style: TextStyle(
              fontSize: 17, color: white1, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Row(
                    children: [
                      Text(
                        'Pay now into ',
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        widget.digiSchemeData?.accountName ?? "",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        ' Scheme ',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        children: [
                          Text(
                            'Gigigold Passbook Number: ',
                            style: TextStyle(fontSize: 14),
                          ),
                          Text(
                            widget.digiSchemeData?.accountNumber ?? "",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 20, right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: const Color(0xFFF3ECE7),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 60),
                            const Text(
                              'This transaction will earn you the following benefit',
                              style: TextStyle(fontSize: 13),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              '${(widget.digiSchemeData!.currentInterestSlabRate!).toStringAsFixed(2)}%',
                              style: const TextStyle(
                                fontSize: 13,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Stack(
                                children: [
                                  Container(
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                  ),
                                  FractionallySizedBox(
                                    widthFactor: progressValue,
                                    // From 0.0 to 1.0
                                    child: Container(
                                      height: 30,
                                      decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                    child: Row(
                                      children: List.generate(4, (index) {
                                        return Expanded(
                                          child: Container(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                              width: 1,
                                              height: 30,
                                              color: Colors.grey.shade400,
                                            ),
                                          ),
                                        );
                                      }),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 6),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: labels.map((label) {
                                  return Text(
                                    label,
                                    style: const TextStyle(fontSize: 10),
                                  );
                                }).toList(),
                              ),
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 50,
                  right: 50,
                  child: Container(
                    height: 104, // Increased height to prevent overflow
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: white1,
                      border: Border.all(color: gradient2),
                    ),
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 74,
                          height: 74,
                          child: Image.asset(
                            'lib/assets/gold_img.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(width: 20),
                        // spacing between image and text
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    (widget.digiSchemeData?.metalType ?? "") ==
                                            "SILVER"
                                        ? "Today's Sliver Rate"
                                        : "Today's Gold Rate",
                                    style: follow,
                                  ),
                                ],
                              ),
                              Text(
                                "₹${widget.digiSchemeData?.metalRate}/g",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: gradient2,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text('Enter the Amount you wish to save', style: planST),
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
                                  width: 130,
                                  height: 50,
                                  child: TextFormField(
                                    controller: enterAmountText,
                                    onChanged: (value) {
                                      setState(() {
                                        if (value.isNotEmpty) {
                                          double amount = double.parse(value);
                                          grams = (amount /
                                                  widget.digiSchemeData!
                                                      .metalRate!)
                                              .toStringAsFixed(2);
                                          interetAmt = (amount *
                                                  (widget.digiSchemeData!
                                                          .currentInterestSlabRate! /
                                                      100))
                                              .toStringAsFixed(2);
                                          discountGrams = (double.parse(
                                                      grams!) *
                                                  (widget.digiSchemeData!
                                                          .currentInterestSlabRate! /
                                                      100))
                                              .toStringAsFixed(2);
                                          totalGrams = (double.parse(grams!) +
                                                  double.parse(discountGrams!))
                                              .toStringAsFixed(2);
                                        } else {
                                          grams = "0.0";
                                          interetAmt = "0.0";
                                          discountGrams = "0.0";
                                          totalGrams = "0.0";
                                        }
                                      });
                                    },
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
                                Container(
                                  height: 50,
                                  width: 130,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: white1,
                                    border: Border.all(color: gradient1),
                                  ),
                                  child: Center(
                                      child: Text(
                                    "${grams} gms",
                                    style: TextStyle(
                                        color: black1,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  )),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            const SizedBox(width: 18),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'You Get: ',
                                    style: TextStyle(
                                      fontFamily: 'JosefinSans',
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ₹$interetAmt',
                                    style: const TextStyle(
                                      fontFamily: 'JosefinSans',
                                      fontSize: 15,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const Spacer(),
                            const Text(
                              '|',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.grey),
                            ),
                            SizedBox(width: 40),
                            Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'You Get: ',
                                        style: TextStyle(
                                          fontFamily: 'JosefinSans',
                                          fontSize: 14,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '${discountGrams} gms',
                                        style: TextStyle(
                                          fontFamily: 'JosefinSans',
                                          fontSize: 13,
                                          color: Colors.green,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
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
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Quantity you saved', style: planST),
                  const SizedBox(width: 30),
                  Container(
                    height: 50,
                    width: 133,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: white1,
                      border: Border.all(color: const Color(0xFF0FA843)),
                    ),
                    child: Center(
                        child: Text(
                      "${totalGrams} gms",
                      style: TextStyle(
                          color: const Color(0xFF0FA843),
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                            '*Benefits subject to redemption after date of maturity',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Target Tracking Status',
                        style: TextStyle(
                          color: Colors.red[800],
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey, // Border color
                        width: 1, // Border width
                      ),
                      borderRadius:
                          BorderRadius.circular(10), // Match barRadius
                    ),
                    child: LinearPercentIndicator(
                      animation: true,
                      lineHeight: 8.0,
                      percent: isZero ? 0.0 : progressValue,
                      barRadius: const Radius.circular(10),
                      backgroundColor: Colors.white,
                      progressColor:
                          isZero ? Colors.transparent : Colors.transparent,
                      center: Text(
                        '${(progressValue * 100).toInt()}%',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '0.06% Achieved',
                          style: TextStyle(
                              color: Colors.amber[800],
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '330 Days',
                          style: TextStyle(color: Colors.grey[800]),
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey.shade400),
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
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
                              color: Colors.black,
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
                        onPressed: () async {
                          if (enterAmountText?.text.isEmpty == true) {
                            ShowToastMessage("Please enter amount");
                            return;
                          } else {
                            LoadingOverlay.show(context);

                            List<Map<String, dynamic>> data = [];

                            var now = DateTime.now();
                            var formatter = DateFormat('yyyy-MM-dd');
                            String formattedDate = formatter.format(now);
                            data.add(
                              {
                                "advance": 1,
                                "id_scheme_account":
                                    widget.digiSchemeData?.accountId,
                                "trans_date": formattedDate,
                                "date_payment": formattedDate,
                                "payment_charges": 0,
                                "payment_status": 0,
                                "paid_through": 2,
                                "installment": 1,
                                "id_branch": 0,
                                "id_payGateway": 1,
                                "payment_amount": enterAmountText?.text,
                                "tax_amount": 0,
                                "net_amount": enterAmountText?.text,
                                "total_net_amount": enterAmountText?.text,
                                "discountAmt": 0,
                                "actual_trans_amt": 0,
                                "ref_trans_id": null,
                                "trans_id": null,
                                "metal_weight": double.parse(totalGrams!),
                                "metal_rate": widget.digiSchemeData?.metalRate,
                                "tax_type": 3,
                                "tax_id": null,
                                "scheme_id": widget.digiSchemeData?.schemeId,
                                "account_name":
                                    widget.digiSchemeData?.accountName,
                              },
                            );

                            final result = await ref
                                .read(paymentPostProvider(data).future);

                            if (result?.message ==
                                "Payment Created successfully.") {
                              await initiatePay(
                                  orderId: result?.orderId ?? "",
                                  paymentSessionId:
                                      result?.paymentSessionId ?? "");
                            } else {
                              LoadingOverlay.forcedStop();
                              // Handle failure
                              ShowToastMessage(result?.message ?? "");
                            }
                          }
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

  Future<void> initiatePay(
      {required String orderId, required String paymentSessionId}) async {
    try {
      var session = CFSessionBuilder()
          .setEnvironment(environment)
          .setOrderId(orderId)
          .setPaymentSessionId(paymentSessionId)
          .build();

      var cfWebCheckout =
          CFWebCheckoutPaymentBuilder().setSession(session).build();

      var cfPaymentGateway = CFPaymentGatewayService();

      cfPaymentGateway.setCallback(
        (resultsMsg) async {
          print('Payment successful for Order ID: $resultsMsg');

          Map<String, dynamic> data = {
            "type": "Success",
            "order_id": orderId,
          };

          final result = await ref.read(paymentSuccessProvider(data).future);

          LoadingOverlay.forcedStop();
          if (result?.status == true) {
            Navigator.pop(context, true);
          } else {
            // Handle failure
            ShowToastMessage(result?.message ?? "");
          }
        },
        (error, resultsMsg) async {
          Map<String, dynamic> data = {
            "type": "Failure",
            "order_id": orderId,
          };

          final result = await ref.read(paymentSuccessProvider(data).future);

          LoadingOverlay.forcedStop();
          if (result?.status == false) {
            ShowToastMessage(result?.message ?? "");
          } else {
            // Handle failure
            ShowToastMessage(result?.message ?? "");
          }
        },
      );

      cfPaymentGateway.doPayment(cfWebCheckout);
    } catch (e) {
      if (e is CFException) {
        print('CFException: ${e.message}');
      } else {
        print('Exception: $e');
      }
    }
  }
}

InputDecoration boxWalletCardInputDecoration1(String hint) {
  return InputDecoration(
    hintText: hint,
    // ✅ Use hintText instead of labelText
    hintStyle: const TextStyle(
      color: Colors.black,
      fontSize: 15,
    ),

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Colors.red,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Colors.red,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Colors.red,
        width: 2.0,
      ),
    ),
  );
}

InputDecoration boxWalletCardInputDecoration(String hint) {
  return InputDecoration(
    hintText: hint,
    hintStyle: const TextStyle(
      color: Colors.black,
      fontSize: 15,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Colors.green,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Colors.green,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: Colors.green,
        width: 2.0,
      ),
    ),
  );
}
