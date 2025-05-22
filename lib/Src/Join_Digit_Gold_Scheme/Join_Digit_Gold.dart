import 'package:flutter/material.dart';
import 'package:flutter_cashfree_pg_sdk/api/cfpayment/cfwebcheckoutpayment.dart';
import 'package:flutter_cashfree_pg_sdk/api/cfpaymentgateway/cfpaymentgatewayservice.dart';
import 'package:flutter_cashfree_pg_sdk/api/cfsession/cfsession.dart';
import 'package:flutter_cashfree_pg_sdk/utils/cfenums.dart';
import 'package:flutter_cashfree_pg_sdk/utils/cfexceptions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:jewelone/Common_Widgets/Common_Card.dart';
import 'package:jewelone/Common_Widgets/Custom_App_Bar.dart';
import 'package:jewelone/Model/DigiSchemeModel.dart';
import 'package:jewelone/Src/Join_Digit_Gold_Scheme/Bottom_Bar/Bottom_Bar_1.dart';
import 'package:jewelone/Src/Join_Digit_Gold_Scheme/Bottom_Bar/Bottom_Bar_2.dart';
import 'package:jewelone/Src/Join_Digit_Gold_Scheme/Bottom_Bar/Common_bar.dart';
import 'package:jewelone/utilits/ApiProvider.dart';
import 'package:jewelone/utilits/Common_Colors.dart';
import 'package:jewelone/utilits/Generic.dart';
import 'package:jewelone/utilits/Loading_Overlay.dart';
import 'package:jewelone/utilits/Text_Style.dart';

class JoinDigitGold extends ConsumerStatefulWidget {
  DigiSchemeData? digiSchemeData;
  JoinDigitGold({super.key, required this.digiSchemeData});

  @override
  ConsumerState<JoinDigitGold> createState() => _JoinDigitGoldState();
}

class _JoinDigitGoldState extends ConsumerState<JoinDigitGold> {
  bool agreeToTerms = false;
  int? selectedIndex;

  TextEditingController? enterAmountText = TextEditingController();
  TextEditingController? enterNameText = TextEditingController();
  String? grams = "0.0";
  String? interetAmt = "0.0";
  String? discountGrams = "0.0";
  String? totalGrams = "0.0";

  final CFEnvironment environment = CFEnvironment.SANDBOX;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: Custom_AppBar(
          isNav: true,
          isTwoLine: false,
          title1: 'Join Digital Scheme',
          title2: '',
          actionLogo: 'info.svg',
          isWhite: false,
          ActiononTap: () {},
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
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
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20, left: 20, right: 20, bottom: 10),
                      child: Container(
                        height: 104,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: white1,
                          border: Border.all(color: Colors.yellow),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'lib/assets/gold_img.png',
                                height: 74,
                                width: 74,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    (widget.digiSchemeData?.metalType ?? "") ==
                                            "SILVER"
                                        ? "Today's Sliver Rate"
                                        : "Today's Gold Rate 22KT",
                                    style: follow,
                                  ),
                                  Text(
                                    "₹${widget.digiSchemeData?.metalRate}/g",
                                    style: planST5,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () => showCustomBottomSheet1(
                                  context, const Bottombar1()),
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
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
                                      color: gradient2,
                                    ),
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
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
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
                                      color: gradient2,
                                    ),
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
                padding: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Enter the Amount you wish to save',
                        style: planST),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        border: Border.all(color: gradient1),
                      ),
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, top: 15, bottom: 15),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                                    double.parse(
                                                        discountGrams!))
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
                          const SizedBox(height: 15),
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
                                    TextSpan(
                                      text: ' ₹$interetAmt',
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
                              const Text('│',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey)),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'You Get: ',
                                      style: Black22,
                                    ),
                                    TextSpan(
                                      text: '${discountGrams} gms',
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
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Text('Quantity you saved', style: planST),
                    SizedBox(
                      width: 30,
                    ),
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
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                            '*Benefits subject to redemption after date of maturity',
                            style: detailsT),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text('Name Your Scheme', style: planST),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Colors.white, width: 3), // White outer border
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 1,
                      ),
                    ],
                  ),
                  child: TextFormField(
                    controller: enterNameText,
                    decoration: InputDecoration(
                      hintText:
                          'Enter Your Name', // Changed from labelText to hintText
                      hintStyle: Black22, // Use your custom text style here
                      border: InputBorder.none,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 16),
                    ),
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '*Date of Maturity: ${widget.digiSchemeData!.maturityDate!}',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Font_Primary_Color,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      agreeToTerms = !agreeToTerms;
                    });
                  },
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
              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Center the buttons
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 5,
                              offset: Offset(0, 0.5),
                            ),
                          ],
                        ),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                            // setState(() {
                            //   selectedIndex = 0;
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //           builder: (context) => const DigitGoldCard()));
                            // });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              )),
                          child: Text('Cancel', style: gramST),
                        ),
                      ),
                    ),
                    SizedBox(width: 20), // Add space between buttons
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          gradient: const LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.topRight,
                            colors: [
                              gradient2,
                              gradient1,
                            ],
                          ),
                        ),
                        child: ElevatedButton(
                          onPressed: () async {
                            if (enterAmountText?.text.isEmpty == true) {
                              ShowToastMessage("Please enter amount");
                              return;
                            } else if (enterNameText?.text.isEmpty == true) {
                              ShowToastMessage("Please enter name");
                              return;
                            } else if (agreeToTerms == false) {
                              ShowToastMessage(
                                  "Please agree to terms and conditions");
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
                                  "id_scheme_account": null,
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
                                  "metal_rate":
                                      widget.digiSchemeData?.metalRate,
                                  "tax_type": 3,
                                  "tax_id": null,
                                  "account_name": enterNameText?.text,
                                  "scheme_id": widget.digiSchemeData?.schemeId,
                                  "id_customer": await getCustomer_Id(),
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

                            // setState(() {
                            //   selectedIndex = 1;
                            //   Navigator.push(
                            //       context,
                            //       MaterialPageRoute(
                            //           builder: (context) => const NewPassbookScheme()));
                            // });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              )),
                          child: Text('Pay Now', style: walletT33),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ));
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
