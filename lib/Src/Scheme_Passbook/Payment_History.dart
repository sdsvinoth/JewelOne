import 'package:flutter/material.dart';
import 'package:jewelone/utilits/Common_Colors.dart';

class PaymentHistory extends StatelessWidget {
  const PaymentHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(vertical:10,horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Date",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "Amount",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "Save Weight",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                "Status",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: gradient1,
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical:10,horizontal: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("2023-10-01"),
                    Text("₹ 100"),
                    Text("0.5 gm"),
                    Text("Success"),
                  ],
                ),
                Divider(
                  color: grey3,
                  thickness: 1,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Payment Details",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),
                            Text("21-06-2024, 05:17PM"),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              "Transaction ID",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),
                            Text("435765908902"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Net Banking"),
                        Text("Status: Failed"),
                      ],
                    ),
                  ],
                ),
                Text(
                  "Text debited amount if any will be credited to your bank account"
                      "fot this failed payment",
                  style: TextStyle(
                    color: grey3,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 15),

        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: gradient1,
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical:10,horizontal: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("2023-10-01"),
                    Text("₹ 1000"),
                    Text("0.5 gm"),
                    Text("Failed"),
                  ],
                ),
                Divider(
                  color: grey3,
                  thickness: 1,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Payment Details",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),
                            Text("21-06-2024, 05:17PM"),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              "Transaction ID",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 4),
                            Text("435765908902"),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Net Banking"),
                        Text("Status: Failed"),
                      ],
                    ),
                  ],
                ),
                Text(
                  "Text debited amount if any will be credited to your bank account"
                      "fot this failed payment",
                  style: TextStyle(
                    color: grey3,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),

        Padding(
          padding: const EdgeInsets.all(1),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            ),
            child:   const Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("2023-10-01"),
                      Text("₹ 100"),
                      Text("0.5 gm"),
                      Text("Success"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(1),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[50],
            ),
            child:   const Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("2023-10-01"),
                      Text("₹ 100"),
                      Text("0.5 gm"),
                      Text("Success"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        const SizedBox(height: 15),

        Padding(
          padding: const EdgeInsets.symmetric(vertical:10,horizontal: 15),
          child:  Container(
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

      ],
    );
  }
}
