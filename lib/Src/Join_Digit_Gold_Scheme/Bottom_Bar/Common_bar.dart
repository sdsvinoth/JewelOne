import 'package:flutter/material.dart';
import 'package:jewelone/Src/Join_Digit_Gold_Scheme/Bottom_Bar/Bottom_Bar_1.dart';
import 'package:jewelone/Src/Join_Digit_Gold_Scheme/Bottom_Bar/Bottom_Bar_2.dart';


void showCustomBottomSheet1(BuildContext context, Widget content) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (context) => const Bottombar1(),
  );
}
void showCustomBottomSheet2(BuildContext context, Widget content) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (context) => const Bottombar2(),
  );
}