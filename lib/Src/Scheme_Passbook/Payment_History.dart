import 'package:flutter/material.dart';

class PaymentHistory extends StatelessWidget {
   const PaymentHistory({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        SizedBox(height: 20),
        const
        Row(
          children: const [
            Expanded(
              child:  Text(
              "Date",
                textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            ),
            Expanded(
              child: Text(
                "Amount",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Text(
                    "Save Weight",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Text(
                "Status",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
