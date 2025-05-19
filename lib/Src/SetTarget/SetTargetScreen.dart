import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jewelone/Common_Widgets/Common_Card.dart';
import 'package:jewelone/Common_Widgets/Custom_App_Bar.dart';
import 'package:jewelone/Model/DigiSchemeModel.dart';
import 'package:jewelone/utilits/ApiProvider.dart';
import 'package:jewelone/utilits/Generic.dart';
import 'package:jewelone/utilits/Loading_Overlay.dart';

class SetTargetScreen extends ConsumerStatefulWidget {
  DigiSchemeData? digiSchemeData;

  SetTargetScreen({super.key, required this.digiSchemeData});

  @override
  ConsumerState<SetTargetScreen> createState() => _SetTargetScreenState();
}

class _SetTargetScreenState extends ConsumerState<SetTargetScreen> {
  TextEditingController? enterAmountText = TextEditingController();

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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // User ID and Name
                Text(widget.digiSchemeData?.accountNumber ?? '',
                    style: TextStyle(color: Colors.white70)),
                Text(widget.digiSchemeData?.accountName ?? '',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 16),

                // Weight Saved and Benefit Earned
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _infoCard('Weight Saved', '0.015 grams'),
                    _infoCard('Benefit Earned*', '0.001 grams'),
                  ],
                ),

                const SizedBox(height: 12),
                const Divider(color: Colors.white54),

                // Gold Saved Circle, Date of Maturity, Target Achieved
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _circleCard('0.016 g', 'Total Gold Saved'),
                    _verticalText('10-Apr-2025', 'Date of Maturity'),
                    _verticalText('Target not set', 'Target Achieved'),
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
                  const Text('Setup your 330 days Target',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  const SizedBox(height: 4),
                  const Text(
                      'Enter gold weight you wish to save in this scheme'),
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
                                // if (value.isNotEmpty) {
                                //   double amount = double.parse(value);
                                //   grams = (amount /
                                //           widget.digiSchemeData!
                                //               .metalRate!)
                                //       .toStringAsFixed(2);
                                //   discountGrams =
                                //       (double.parse(grams!) * 0.05)
                                //           .toStringAsFixed(2);
                                //   totalGrams = (double.parse(grams!) +
                                //           double.parse(discountGrams!))
                                //       .toStringAsFixed(2);
                                // } else {
                                //   grams = "0.0";
                                //   discountGrams = "0.0";
                                //   totalGrams = "0.0";
                                // }
                              });
                            },
                            decoration: boxWalletCardInputDecoration1('100'),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),

                  // Tracking Status
                  const Text('Target Tracking Status',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      const Icon(Icons.circle, size: 8, color: Colors.orange),
                      const SizedBox(width: 4),
                      const Text('0.74% Achieved'),
                      const Spacer(),
                      const Text('330 days to target'),
                    ],
                  ),
                  const SizedBox(height: 16),

                  const Text('You are setting target of 0.038g per week'),
                  const SizedBox(height: 16),

                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('To meet your target,'),
                        Text('Save atleast ₹250 every week',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold)),
                        SizedBox(height: 4),
                        Text(
                            '(Estimated only based on today’s gold rate & will differ daily)',
                            style: TextStyle(fontSize: 12)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Checkbox
                  Row(
                    children: [
                      Checkbox(value: false, onChanged: (_) {}),
                      const Text("Just set target, don’t send notifications"),
                    ],
                  ),

                  // Buttons
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () {},
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
                                ShowToastMessage("Please enter amount");
                                return;
                              } else {
                                Map<String, dynamic> data = {};
                                data = {
                                  "customerId": widget.digiSchemeData?.schemeId,
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
                color: Colors.white, fontWeight: FontWeight.bold)),
        const SizedBox(height: 4),
        Text(label,
            style: const TextStyle(color: Colors.white70, fontSize: 12)),
      ],
    );
  }
}
