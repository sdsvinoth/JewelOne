import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jewelone/Common_Widgets/Common_Card.dart';
import 'package:jewelone/Common_Widgets/Custom_App_Bar.dart';
import 'package:jewelone/Model/DigiSchemeModel.dart';
import 'package:jewelone/utilits/ApiProvider.dart';
import 'package:jewelone/utilits/Generic.dart';
import 'package:jewelone/utilits/Loading_Overlay.dart';
import 'package:jewelone/utilits/Text_Style.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SetTargetScreen extends ConsumerStatefulWidget {
  DigiSchemeData? digiSchemeData;

  SetTargetScreen({super.key, required this.digiSchemeData});

  @override
  ConsumerState<SetTargetScreen> createState() => _SetTargetScreenState();
}

class _SetTargetScreenState extends ConsumerState<SetTargetScreen> {
  TextEditingController? enterAmountText = TextEditingController();
  double progressValue = 0.01; // Example: 60%
  final bool isZero = false;


  @override
  void initState() {
    super.initState();

    final targetValue = widget.digiSchemeData?.goalTracking?.targetGrams;
    progressValue = double.tryParse(widget.digiSchemeData?.targetAchievedPercent ?? '') ?? 0.0;
    enterAmountText?.text = targetValue != null ? targetValue.toString() : '';
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom_AppBar(
        isNav: true,
        isTwoLine: false,
        title1: 'Set Target',
        title2: '',
        actionLogo: 'info.svg',
        isWhite: false,
        ActiononTap: () {},
      ),
      body: Column(
        children: [
          // Gradient Header
          Container(
            padding:
                const EdgeInsets.only(top: 20, left: 16, right: 16, bottom: 24),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFD3472F), Color(0xFFE59333)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
            ),
             // User ID and Name
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                            crossAxisAlignment:
                                CrossAxisAlignment
                                    .start,
                            children: [
                              Text(widget.digiSchemeData?.accountNumber ?? '',
                              style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                            ],
                          ),
                    Column(
                            crossAxisAlignment:
                                CrossAxisAlignment
                                    .end,
                            children: [
                              Text(widget.digiSchemeData?.accountName ?? '',
                              style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                            ],
                          ),
                  ]
                ),
                const SizedBox(height: 16),

                // Weight Saved and Benefit Earned
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                    color: const Color(
                                                                        0xFF87251D),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        top:
                                                                            8.0,
                                                                        bottom:
                                                                            8.0,
                                                                        left:
                                                                            20),
                                                                    child:
                                                                        Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          "Weight Saved",
                                                                          style:
                                                                              walletT3?.copyWith(
                                                                            fontFamily:
                                                                                'JosefinSans',
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          "${widget.digiSchemeData?.weightSavedGrams ?? ""} grams",
                                                                          style:
                                                                              walletT3?.copyWith(
                                                                            fontFamily:
                                                                                'JosefinSans',
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                    const SizedBox(
                                                                  width: 20),
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10),
                                                                    color: const Color(
                                                                        0xFF87251D),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsets
                                                                        .only(
                                                                        top:
                                                                            8.0,
                                                                        bottom:
                                                                            8.0,
                                                                        left:
                                                                            20),
                                                                    child:
                                                                        Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Text(
                                                                          "Benefit Earned*",
                                                                          style:
                                                                              walletT3?.copyWith(
                                                                            fontFamily:
                                                                                'JosefinSans',
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          "${widget.digiSchemeData?.maturityBenefitGrams} grams",
                                                                          style:
                                                                              walletT3?.copyWith(
                                                                            fontFamily:
                                                                                'JosefinSans',
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                            color:
                                                                                Colors.white,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                                                                    
                    //_infoCard('Weight Saved', '${widget.digiSchemeData?.weightSavedGrams} grams'),
                    //_infoCard('Benefit Earned*', '${widget.digiSchemeData?.maturityBenefitGrams} grams'),
                  ],
                ),

                const SizedBox(height: 12),
                const Divider(color: Colors.white54),

                // Gold Saved Circle, Date of Maturity, Target Achieved
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                     Container(
                                                                    width: 110,
                                                                    height: 110,
                                                                    decoration:
                                                                        const BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children: [
                                                                        const SizedBox(
                                                                            height:
                                                                                10),
                                                                        Text(
                                                                          "Total\nWeight Saved",
                                                                          style:
                                                                              UserST.copyWith(
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize:
                                                                                15,
                                                                            fontFamily:
                                                                                'JosefinSans',
                                                                            fontWeight:
                                                                                FontWeight.w400,
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                        ),
                                                                        const SizedBox(
                                                                            height:
                                                                                5),
                                                                        Text(
                                                                          "${widget.digiSchemeData?.totalGoldSavedGrams} g",
                                                                          style:
                                                                              UserST.copyWith(
                                                                            color:
                                                                                Colors.red,
                                                                            fontSize:
                                                                                20,
                                                                            fontFamily:
                                                                                'JosefinSans',
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                          ),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                 
                    //_circleCard('${widget.digiSchemeData?.totalGoldSavedGrams} g', 'Total Gold Saved'),
                    _verticalText('Maturity On', '${widget.digiSchemeData?.maturityDate}'),
                    _verticalText('Target Achieved', '${widget.digiSchemeData?.targetAchievedPercent}%'),
                  ],
                ),
              ],
            ),
          ),

          // Remaining UI
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Setup your ${widget.digiSchemeData?.maturityDays ?? ''} days Target',
                      style:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 4),
                  const Text(
                      'Enter weight you wish to save in this scheme'),
                  const SizedBox(height: 16),

                  // Input
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 16, horizontal: 12),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Text('Weight in Grams'),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: SizedBox(
                          width: 130,
                          height: 50,
                          child: TextFormField(
                            controller: enterAmountText,
                            onChanged: (value) {
                              setState(() {
                                
                              });
                            },
                            decoration: boxWalletCardInputDecoration1('100'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                              '${widget.digiSchemeData?.targetAchievedPercent}% Achieved',
                              style: TextStyle(
                                  color: Colors.amber[800],
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '${widget.digiSchemeData?.maturityDays ?? ''} Days',
                              style: TextStyle(color: Colors.grey[800]),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
          

                 
                  const SizedBox(height: 16),
                  
                  Text('You are setting target of ${widget.digiSchemeData?.goalTracking?.weeklyTarget ?? ''}g per week'),
                  const SizedBox(height: 16),

                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //Text('To meet your target,'),
                        Text(widget.digiSchemeData?.goalTracking?.weeklySavingsTip ?? '',
                            style: const TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(height: 4),
                        const Text(
                            '(Estimated only based on today’s gold rate & will differ daily)',
                            style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Checkbox
                  /* Row(
                    children: [
                      Checkbox(value: false, onChanged: (_) {}),
                      const Text("Just set target, don’t send notifications"),
                    ],
                  ), */

                  // Buttons
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24)),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: Text('Cancel'),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16),
                      // Gradient Button Wrapper
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [Color(0xFFD3472F), Color(0xFFE59333)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: ElevatedButton(
                            onPressed: () async {
                              if (enterAmountText?.text.isEmpty == true) {
                                ShowToastMessage("Please enter target weight");
                                return;
                              } else {
                                Map<String, dynamic> data = {};
                                data = {
                                  "customerId": await getCustomer_Id(),
                                  "accountId": widget.digiSchemeData?.accountId,
                                  "targetWeight": enterAmountText?.text,
                                };

                                final result = await ref
                                    .read(setTargetDigiProvider(data).future);

                                LoadingOverlay.forcedStop();
                                if (result?.message ==
                                    "Payment Created successfully.") {
                                  Navigator.pop(context, true);
                                } else {
                                  // Handle failure
                                  ShowToastMessage(result?.message ?? "");
                                }
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              shadowColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24),
                              ),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(vertical: 12),
                              child: Text('Set Target',
                                  style: TextStyle(color: Colors.white)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoCard(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: const TextStyle(color: Colors.white70, fontSize: 12)),
        const SizedBox(height: 4),
        Text(value,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ],
    );
  }

  Widget _circleCard(String value, String label) {
    return Column(
      children: [
        Container(
          width: 64,
          height: 64,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          alignment: Alignment.center,
          child: Text(value,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.red)),
        ),
        const SizedBox(height: 4),
        Text(label, style: const TextStyle(color: Colors.white, fontSize: 12)),
      ],
    );
  }

  Widget _verticalText(String value, String label) {
    return Column(
      children: [
        Text(value,
            style: const TextStyle(
                color: Colors.white70, fontSize: 14,)),
        const SizedBox(height: 4),
        Text(label,
            style: const TextStyle(color: Colors.white,  fontWeight: FontWeight.bold)),
      ],
    );
  }

  @override
  void dispose() {
    enterAmountText?.dispose();
    super.dispose();
  }
}
