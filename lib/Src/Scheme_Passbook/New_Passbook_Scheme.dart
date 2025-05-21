import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jewelone/Common_Widgets/Custom_App_Bar.dart';
import 'package:jewelone/Model/DigiSchemeModel.dart';
import 'package:jewelone/Src/FAQ_Ui/FAQ_Screen.dart';
import 'package:jewelone/Src/Join_Digit_Gold_Scheme/JoinedDigiGold.dart';
import 'package:jewelone/Src/Scheme_Passbook/Payment_History.dart';
import 'package:jewelone/utilits/ApiProvider.dart';
import 'package:jewelone/utilits/Common_Colors.dart';
import 'package:jewelone/utilits/Text_Style.dart';

class NewPassbookScheme extends ConsumerStatefulWidget {
  String schemeAccountID;
  DigiSchemeData? digiSchemeData;

  NewPassbookScheme(
      {super.key, required this.digiSchemeData, required this.schemeAccountID});

  @override
  ConsumerState<NewPassbookScheme> createState() => _NewPassbookSchemeState();
}

class _NewPassbookSchemeState extends ConsumerState<NewPassbookScheme> {
  bool backhome = false;
  bool isFirstTimeLoad = true;

  List<bool> _showDetailsList = [];

  @override
  Widget build(BuildContext context) {
    final paymenthistorydata =
        ref.watch(getDigiPayementHisProvider(widget.schemeAccountID));
    return Scaffold(
        backgroundColor: backGroundColor,
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
        body: paymenthistorydata.when(data: (data) {
          if (isFirstTimeLoad) {
            isFirstTimeLoad = false;
            _showDetailsList = List.generate(data?.payments?.length ?? 0,
                (_) => false); // Track expand state for 5 items
          }

          return data?.schemeAccount != null
              ? SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${data?.schemeAccount?.schemeName} SCHEME',
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
                                  color: Colors.orange[50],
                                ),
                                child: Column(
                                  children: [
                                    SizedBox(height: 20),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 18.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '${data?.schemeAccount?.accountName}',
                                                style: TextStyle(
                                                  fontFamily: 'JosefinSans',
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  color: gradient1,
                                                ),
                                              ),
                                              Text(
                                                data?.schemeAccount
                                                        ?.schemeAccNumber ??
                                                    "",
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
                                                "${data?.schemeAccount?.totalNetAmount ?? ""}",
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
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 18.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                                '${data?.schemeAccount?.totalMetalWeight ?? ""}g',
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
                                                '${data?.schemeAccount?.totalBonusWeight ?? ""}g',
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
                                height: 75,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),

                                  color: Color(
                                      0xFFA51E23), // gradient1 replacement
                                ),
                                child: Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 20),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Date of Joining',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                '${data?.schemeAccount?.startDate ?? ""}',
                                                style: TextStyle(
                                                  fontFamily: 'JosefinSans',
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Spacer(),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(right: 20),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Date of Maturity',
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                '${data?.schemeAccount?.maturityDate ?? ""}',
                                                style: TextStyle(
                                                  fontFamily: 'JosefinSans',
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Positioned(
                                      top: -10,
                                      left: MediaQuery.of(context).size.width /
                                              2 -
                                          45,
                                      child: ClipOval(
                                        child: Container(
                                          width: 90,
                                          height: 90,
                                          color: Colors.amber[300],
                                          alignment: Alignment.center,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                "Total\nWeight Saved",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                              SizedBox(height: 2),
                                              Text(
                                                "${data?.schemeAccount?.totalAccWeight ?? 0.0} g",
                                                style: TextStyle(
                                                  color: Colors.red[900],
                                                  fontSize: 18,
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
                        const PaymentHistory(),
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: data?.payments?.length,
                          padding: const EdgeInsets.all(10),
                          itemBuilder: (context, index) {
                            return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _showDetailsList[index] =
                                        !_showDetailsList[index];
                                  });
                                },
                                child: Column(
                                  children: [
                                    Container(
                                      padding: _showDetailsList[index]
                                          ? const EdgeInsets.all(10)
                                          : EdgeInsets.zero,
                                      margin: const EdgeInsets.only(bottom: 15),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                          color: _showDetailsList[index]
                                              ? gradient2
                                              : Colors.white,
                                          width: _showDetailsList[index]
                                              ? 1
                                              : 10, // red = 1px, white = 10px
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.8),
                                            blurRadius: 5,
                                            offset: Offset(0, 2),
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Text(
                                                  data?.payments?[index]
                                                          .datePayment ??
                                                      "",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "₹ ${data?.payments?[index].paymentAmount}",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "${data?.payments?[index].accumulateWeight} gm",
                                                  textAlign: TextAlign.center,
                                                ),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.green[100],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  child: Text(
                                                    "${data?.payments?[index].paymentStatus}",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Colors.green,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          if (_showDetailsList[index])
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Divider(),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text("Payment Details",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                        SizedBox(height: 4),
                                                        Text(
                                                            "${data?.payments?[index].transDate}"),
                                                      ],
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Text("Transaction ID",
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                        SizedBox(height: 4),
                                                        Text(
                                                            "${data?.payments?[index].transId ?? ""}"),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(height: 10),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                        "Order ID: ${data?.payments?[index].orderId ?? ""}"),
                                                    Text(
                                                        "Payment Mode: ${data?.payments?[index].paidThrough}"),
                                                  ],
                                                ),
                                                if (data?.payments?[index].paymentStatus?.toLowerCase() != "success")
                                                  const Padding(
                                                    padding: const EdgeInsets.only(top: 4.0),
                                                    child: Text(
                                                      "The debited amount if any will be credited to your bank account for this failed payment.",
                                                      style: TextStyle(
                                                        color: Colors.red,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ));
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => JoinedDigiGold(
                                          digiSchemeData: widget.digiSchemeData,
                                        )),
                              ).then((onValue) {
                                if (onValue == true) {
                                  Navigator.pop(context, true);
                                }
                              });
                            },
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
                        ),
                      ],
                    ),
                  ),
                )
              : Container(
                  child: Center(child: Text("${"No Data"}")),
                );
        }, error: (Object error, StackTrace stackTrace) {
          return Text("ERROR, $error");
        }, loading: () {
          return const Center(child: CircularProgressIndicator());
        }));
  }
}
