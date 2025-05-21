import 'package:flutter/material.dart';
import 'package:jewelone/Common_Widgets/Image_Path.dart';
import 'package:jewelone/utilits/Common_Colors.dart';
import 'package:jewelone/utilits/Text_Style.dart';

Widget Plan_Card(context, {required String Img, required String planT}) {
  return Container(
    height: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: white1,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //IMAGE
        Padding(
          padding:
              const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
          child: ImgPathSvg(Img),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: SizedBox(
              width: MediaQuery.sizeOf(context).width / 4,
              child: Text(
                planT,
                style: planST,
                maxLines: 2,
                textAlign: TextAlign.center,
              )),
        ),
      ],
    ),
  );
}

//WALLET CARD
Widget Wallet_Card(
  context, {
  required String customername,
  required String Acnumval,
  required String totalpaidval,
  required String totaccval,
  required String noofpaidval,
  required double? width,
  required void Function()? paynow,
  required void Function()? payMentHistory,
}) {
  return Padding(
    padding: const EdgeInsets.only(left: 10),
    child: Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(width: 1, color: gradient2),
            gradient: appGradient),
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //const SizedBox(height: 20,),
                    Text(
                      customername,
                      style: UserST,
                    ),
                    const SizedBox(
                      width: 60,
                      child: Divider(
                        thickness: 2,
                        color: gradient2,
                      ),
                    ),

                    const SizedBox(height: 10),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: (MediaQuery.sizeOf(context).width / 2) - 60,
                          child: Row(
                            children: [
                              SizedBox(
                                  height: 25,
                                  width: 25,
                                  child: ImgPathPng('accountnum.png')),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, right: 5),
                                child: Container(
                                  width: 3,
                                  color: gradient2,
                                  height: 30,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Account No',
                                    style: walletT3,
                                  ),
                                  Text(
                                    Acnumval,
                                    style: walletT3,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: 25,
                                width: 25,
                                child: ImgPathPng('paidinstall.png')),
                            Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: Container(
                                width: 3,
                                color: gradient2,
                                height: 30,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Paid Installment',
                                  style: walletT3,
                                ),
                                Text(
                                  noofpaidval,
                                  style: walletT3,
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: (MediaQuery.sizeOf(context).width / 2) - 60,
                          child: Row(
                            children: [
                              SizedBox(
                                  height: 25,
                                  width: 25,
                                  child: ImgPathPng('totalpaid.png')),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, right: 5),
                                child: Container(
                                  width: 3,
                                  color: gradient2,
                                  height: 30,
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Total Paid',
                                    style: walletT3,
                                  ),
                                  Text(
                                    totalpaidval,
                                    style: walletT3,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.balance_sharp,
                                color: Colors.white),
                            Padding(
                              padding: const EdgeInsets.only(left: 5, right: 5),
                              child: Container(
                                width: 3,
                                color: gradient2,
                                height: 30,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total Weight',
                                  style: walletT3,
                                ),
                                Text(
                                  totaccval,
                                  style: walletT3,
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                  ],
                ),
              ),
              Column(
                children: [
                  const Divider(thickness: 1.5, color: Colors.white),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: payMentHistory,
                        child: SizedBox(
                            width: width! / 2 - 5,
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Payment History",
                                style: ButtonT2,
                              ),
                            ))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Container(
                          width: 1,
                          height: 30,
                          color: Colors.grey,
                        ),
                      ),
                      InkWell(
                        onTap: paynow,
                        child: SizedBox(
                            width: width / 2 - 5,
                            child: Center(
                                child: Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Text(
                                "Pay Now",
                                style: ButtonT2,
                              ),
                            ))),
                      )
                    ],
                  )
                ],
              )
              // Container(
              //   margin: EdgeInsets.only(top: 20,bottom: 20),
              //   width:MediaQuery.sizeOf(context).width/2.5,
              //   child: CommonContainerButton2(context,
              //       onPress: () {
              //         Navigator.push(context, MaterialPageRoute(builder: (context)=>Wallet_screen()));
              //       }, titleName: 'Pay'),
              // ),
            ],
          ),
        ),
      ),
    ),
  );
}

InputDecoration boxWalletCardInputDecoration(String hint) {
  return InputDecoration(
    hintText: hint,
    hintStyle: const TextStyle(
      color: Colors.black,
      fontSize: 16,
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

InputDecoration boxWalletCardInputDecoration1(String hint) {
  return InputDecoration(
    hintText: hint, // ✅ Use hintText instead of labelText
    hintStyle: const TextStyle(
      color: Colors.grey,
      fontSize: 16,
    ),

    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: gradient1,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: gradient1,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        color: gradient1,
        width: 2.0,
      ),
    ),
  );
}

Widget New_SSP_Images(context, {required String image}) {
  return Container(
    height: MediaQuery.sizeOf(context).height / 4,
    width: MediaQuery.sizeOf(context).width,
    decoration: BoxDecoration(
      image: DecorationImage(fit: BoxFit.fill, image: AssetImage(image)),
    ),
  );
}

Widget New_SSP_Image_Content(
    {required String text,
    required String heading,
    required bool isHeadingneeded}) {
  return Container(
    color: red3,
    child: Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isHeadingneeded == true
              ? Text(
                  heading,
                  style: Gramage,
                )
              : Container(),
          Text(
            text,
            style: Content1,
          ),
          const Column(
            children: [],
          )
        ],
      ),
    ),
  );
}
