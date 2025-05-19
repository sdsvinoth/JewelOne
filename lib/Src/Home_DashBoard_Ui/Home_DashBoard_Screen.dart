import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jewelone/Common_Widgets/Common_Card.dart';
import 'package:jewelone/Common_Widgets/Image_Path.dart';
import 'package:jewelone/Model/GoldRateMmodel.dart';
import 'package:jewelone/Model/LoginModel.dart';
import 'package:jewelone/Src/Close_Account_UI/CloseAccountScreen.dart';
import 'package:jewelone/Src/Join_Digit_Gold_Scheme/Join_Digit_Gold.dart';
import 'package:jewelone/Src/Join_Digit_Gold_Scheme/JoinedDigiGold.dart';
import 'package:jewelone/Src/Menu_Ui/Menu_Screen.dart';
import 'package:jewelone/Src/My_SSP_Ui/My_SSP_Screen.dart';
import 'package:jewelone/Src/New_SSP_Ui/New_SSP_Screen.dart';
import 'package:jewelone/Src/Notification_Ui/Notification_Screen.dart';
import 'package:jewelone/Src/Online_Emi_Payment_Ui/Online_Emi_Payment_Screen.dart';
import 'package:jewelone/Src/Purchase_Plan_Detail_Ui/Purchase_Plan_Details_Screen.dart';
import 'package:jewelone/Src/Scheme_Passbook/New_Passbook_Scheme.dart';
import 'package:jewelone/Src/SetTarget/SetTargetScreen.dart';
import 'package:jewelone/utilits/ApiProvider.dart';
import 'package:jewelone/utilits/Common_Colors.dart';
import 'package:jewelone/utilits/Generic.dart';
import 'package:jewelone/utilits/Text_Style.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Payment_History_Ui/payment_History_Screen.dart';

class Home_DashBoard_Screen extends ConsumerStatefulWidget {
  Customer? customer;

  Home_DashBoard_Screen({super.key, this.customer});

  @override
  ConsumerState<Home_DashBoard_Screen> createState() =>
      _Home_DashBoard_ScreenState();
}

class _Home_DashBoard_ScreenState extends ConsumerState<Home_DashBoard_Screen> {
  // final List<String> items = ['Coimbatore', 'Salem', 'Chennai'];
  // String selectedItem = 'Coimbatore';
  int myCurrentPage = 0;
  bool backhome = false;
  String? location;
  List<String> locationoption = ["Pollachi"];

  String name = '';

  Future<void> getDetails() async {
    String cusname = await getCustomer_name();
    setState(() {
      name = cusname;
    });
  }

  void initState() {
    super.initState();
    getDetails();
  }

  @override
  Widget build(BuildContext context) {
    final priceRate = ref.watch(GoldrateProvider);
    final bannerimagedata = ref.watch(BannerDataProvider);
    final myplandata = ref.watch(MyplanProvider);
    final digiSchemedata = ref.watch(getDigiSchemeProvider);

    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: white2,
        leading: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Menu_Screen()));
            },
            child: const Icon(Icons.menu_outlined)),
        // centerTitle: true,
        // title: App_Logo(context),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Saravana Jewels', style: title1),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10, left: 10),
            child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Notification_Screen()));
                },
                child: ImgPathSvg("notification.svg")),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //LOCATION DROPDOWN
              // activelocationdata.when(data: (data){
              //   return _Location_Dropdown();
              // }, error: (Object error, StackTrace stackTrace){
              //   return Text('ERROR $error');
              // }, loading: (){
              //   return CircularProgressIndicator();
              //  }),

              //GOLD PRICE

              priceRate.when(data: (data) {
                return GoldScrollPriceWidget(
                  data: data,
                );
              }, error: (Object error, StackTrace stackTrace) {
                return Text("$error");
              }, loading: () {
                return const CircularProgressIndicator();
              }),

              Container(
                color: white2,
                child: Column(
                  children: [
                    //CARD
                    myplandata.when(data: (data) {
                      if (data?.data?.isNotEmpty ?? false) {
                        return Container(
                          width: MediaQuery.sizeOf(context).width,
                          height: 250,
                          child: ListView.builder(
                              itemCount: data?.data?.length ?? 0,
                              physics: const ScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context, int index) {
                                final cardWidth = data?.data?.length == 1
                                    ? MediaQuery.sizeOf(context).width - 30
                                    : MediaQuery.sizeOf(context).width / 1.2;
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 10),
                                  child: Wallet_Card(
                                    width: cardWidth,
                                    context,
                                    customername:
                                        data?.data?[index].accountName ?? "",
                                    Acnumval:
                                        "${data?.data?[index].idSchemeAccount ?? ""}",
                                    totalpaidval:
                                        '₹${data?.data?[index].paidAmount?.toStringAsFixed(2) ?? ""}',
                                    totaccval: data?.data?[index].paidWeight
                                            ?.toStringAsFixed(3) ??
                                        "",
                                    noofpaidval:
                                        "${data?.data?[index].paidInstallments ?? ""}",
                                    paynow: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Online_Emi_Payment_Screen(
                                                    selectedIndex: index,
                                                  ))).then((onValue) {
                                        ref.refresh(MyplanProvider);
                                      });
                                    },
                                    payMentHistory: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Purchase_Plan_detail_Screeen(
                                                    schemeAccountID: data
                                                            ?.data?[index]
                                                            .idSchemeAccount ??
                                                        0,
                                                  )));
                                    },
                                  ),
                                );
                              }),
                        );
                      } else {
                        return const SizedBox(height: 10);
                      }
                    }, error: (Object error, StackTrace stackTrace) {
                      return const Text('');
                    }, loading: () {
                      return const CircularProgressIndicator();
                    }),

                    // Padding(
                    //   padding: const EdgeInsets.only(
                    //       left: 20, right: 20, bottom: 20, top: 20),
                    //   child: Wallet_Card(
                    //     context,
                    //     customername: "Hi ${name}",
                    //     Acnumval: '81278172817271',
                    //     totalpaidval: '20,000',
                    //     totaccval: '12',
                    //     noofpaidval: '8',
                    //   ),
                    // ),

                    //PLAN CARD
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //ONLINE PAYMENT
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Online_Emi_Payment_Screen(
                                              selectedIndex: null,
                                            ))).then((onValue) {
                                  ref.refresh(MyplanProvider);
                                });
                              },
                              child: Plan_Card(
                                context,
                                Img: 'plan1.svg',
                                planT: 'Online EMI',
                              )),

                          //NEW SWARNA
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const New_SSP_Screen()));
                              },
                              child: Plan_Card(
                                context,
                                Img: 'plan2.svg',
                                planT: 'New Plan',
                              )),

                          //MY SWARNA
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => My_SSP_Screen()));
                              },
                              child: Plan_Card(
                                context,
                                Img: 'plan3.svg',
                                planT: 'My Plan',
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, bottom: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // PAYMENT HISTORY
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const payment_History_Screen()));
                              },
                              child: Plan_Card(
                                context,
                                Img: 'plan1.svg',
                                planT: 'Payment history',
                              )),

                          //CLOSED ACCOUNT
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CloseAccountScreen()));
                              },
                              child: Plan_Card(
                                context,
                                Img: 'plan2.svg',
                                planT: 'Closed account',
                              )),

                          //MY ORDER
                          InkWell(
                              onTap: () {
                                //Navigator.push(context, MaterialPageRoute(builder: (context)=>My_SSP_Screen()));
                              },
                              child: Plan_Card(
                                context,
                                Img: 'plan3.svg',
                                planT: 'My order',
                              )),
                        ],
                      ),
                    ),
                    digiSchemedata.when(data: (data) {
                      if (data?.data?.isNotEmpty ?? false) {
                        return ListView.builder(
                            padding: EdgeInsets
                                .zero, // Removes top, bottom, left, and right padding
                            physics: const ScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: data?.data?.length ?? 0,
                            itemBuilder: (context, index) {
                              return data?.data?[index].accountId != ""
                                  ? Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10, bottom: 10),
                                      child: SizedBox(
                                        width:
                                            MediaQuery.sizeOf(context).width -
                                                20,
                                        child: InkWell(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        NewPassbookScheme(
                                                          schemeAccountID: data
                                                                  ?.data?[index]
                                                                  .accountId ??
                                                              "",
                                                        )));
                                          },
                                          child: Card(
                                            elevation: 1,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(14)),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(14),
                                                border: Border.all(
                                                    width: 1,
                                                    color: Colors.white),
                                              ),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    decoration:
                                                        const BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(20),
                                                        topRight:
                                                            Radius.circular(20),
                                                      ),
                                                      gradient: appGradient,
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/Group.png'),
                                                        fit: BoxFit.cover,
                                                        opacity: 0.2,
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 20,
                                                              right: 20,
                                                              left: 20,
                                                              bottom: 10),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Column(
                                                            children: [
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
                                                                      Text(
                                                                          data?.data?[index].accountNumber ??
                                                                              "",
                                                                          style:
                                                                              walletT31),
                                                                      Text(
                                                                          data?.data?[index].accountName ??
                                                                              "",
                                                                          style:
                                                                              walletT32),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Text(
                                                                          data?.data?[index].schemeName ??
                                                                              "",
                                                                          style:
                                                                              walletT33),
                                                                      Row(
                                                                        children: [
                                                                          Text(
                                                                            "Status:",
                                                                            style:
                                                                                walletT3?.copyWith(
                                                                              fontFamily: 'JosefinSans',
                                                                              fontWeight: FontWeight.bold,
                                                                              color: Colors.white,
                                                                            ),
                                                                          ),
                                                                          const SizedBox(
                                                                              width: 6),
                                                                          Row(
                                                                            children: [
                                                                              Container(
                                                                                height: 20,
                                                                                decoration: const BoxDecoration(
                                                                                  borderRadius: BorderRadius.all(Radius.circular(2)),
                                                                                  color: Colors.green,
                                                                                  shape: BoxShape.rectangle, // or BoxShape.circle if you want a dot
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsets.only(right: 5, left: 5, top: 2),
                                                                                  child: Text(
                                                                                    data?.data?[index].status ?? "",
                                                                                    style: walletT32?.copyWith(
                                                                                      fontFamily: 'JosefinSans',
                                                                                      fontWeight: FontWeight.w500,
                                                                                      color: Colors.white,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ],
                                                                      )
                                                                    ],
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                          const SizedBox(
                                                              height: 10),
                                                          Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
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
                                                                          "${data?.data?[index].weightSavedGrams ?? ""} grams",
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
                                                                          "${data?.data?[index].maturityBenefitGrams} grams",
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
                                                            ],
                                                          ),
                                                          const Divider(
                                                              color:
                                                                  Colors.yellow,
                                                              thickness: 1,
                                                              height: 20),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
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
                                                                          "${data?.data?[index].totalGoldSavedGrams} g",
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
                                                                  Expanded(
                                                                    child:
                                                                        Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          children: [
                                                                            Text("Date of Maturity",
                                                                                style: walletT3),
                                                                          ],
                                                                        ),
                                                                        Text(
                                                                          '${data?.data?[index].maturityDate}',
                                                                          style: TextStyle(
                                                                              fontSize: 12,
                                                                              color: Colors.white),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        InkWell(
                                                                          onTap:
                                                                              () {
                                                                            Navigator.push(
                                                                              context,
                                                                              MaterialPageRoute(
                                                                                  builder: (context) => SetTargetScreen(
                                                                                        digiSchemeData: data?.data?[index],
                                                                                      )),
                                                                            );
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            height:
                                                                                25,
                                                                            padding:
                                                                                const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              borderRadius: BorderRadius.circular(30),
                                                                              color: Colors.white,
                                                                            ),
                                                                            child:
                                                                                Text(
                                                                              "Set Target Now",
                                                                              style: walletT32.copyWith(color: Colors.red),
                                                                              textAlign: TextAlign.center,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        const SizedBox(
                                                                            height:
                                                                                5),
                                                                        Center(
                                                                            child:
                                                                                Text("${data?.data?[index].currentInterestSlabRate}", style: walletT3)),
                                                                        const SizedBox(
                                                                            height:
                                                                                5),
                                                                        LayoutBuilder(
                                                                          builder:
                                                                              (context, constraints) {
                                                                            return ClipRRect(
                                                                              borderRadius: BorderRadius.circular(10),
                                                                              child: LinearPercentIndicator(
                                                                                width: constraints.maxWidth,
                                                                                lineHeight: 10,
                                                                                percent: 0.3,
                                                                                progressColor: Colors.amber,
                                                                                backgroundColor: Colors.transparent,
                                                                                barRadius: const Radius.circular(10),
                                                                                animation: true,
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                        const SizedBox(
                                                                            height:
                                                                                10),
                                                                        SizedBox(
                                                                          height:
                                                                              30,
                                                                          width:
                                                                              107,
                                                                          child:
                                                                              ElevatedButton(
                                                                            onPressed:
                                                                                () {
                                                                              Navigator.push(
                                                                                context,
                                                                                MaterialPageRoute(
                                                                                    builder: (context) => JoinedDigiGold(
                                                                                          digiSchemeData: data?.data?[index],
                                                                                        )),
                                                                              );
                                                                            },
                                                                            style:
                                                                                ElevatedButton.styleFrom(
                                                                              backgroundColor: Colors.yellow[800],
                                                                              shape: RoundedRectangleBorder(
                                                                                borderRadius: BorderRadius.circular(30),
                                                                              ),
                                                                            ),
                                                                            child:
                                                                                Row(
                                                                              children: [
                                                                                Text('Pay Now', style: planST),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 47,
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                          horizontal: 8.0),
                                                      child: IntrinsicHeight(
                                                        child: Row(
                                                          children: [
                                                            Expanded(
                                                              child:
                                                                  GestureDetector(
                                                                // onTap: () =>
                                                                //     showCustomBottomSheet1(
                                                                //         context,
                                                                //         const Bottombar1()),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                          .all(
                                                                          8.0),
                                                                      child: Text(
                                                                          "Key Benefits",
                                                                          style:
                                                                              planST),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            const VerticalDivider(
                                                              color:
                                                                  Colors.grey,
                                                              thickness: 1,
                                                            ),
                                                            Expanded(
                                                              child:
                                                                  GestureDetector(
                                                                // onTap: () =>
                                                                //     showCustomBottomSheet2(
                                                                //         context,
                                                                //         const Bottombar2()),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Padding(
                                                                      padding: const EdgeInsets
                                                                          .all(
                                                                          8.0),
                                                                      child: Text(
                                                                          "Know More",
                                                                          style:
                                                                              planST),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  : Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, right: 10, bottom: 10),
                                      child: Card(
                                        elevation: 5,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            border: Border.all(
                                                width: 1, color: gradient2),
                                            gradient: appGradient,
                                            image: const DecorationImage(
                                              image: AssetImage(
                                                  'assets/Group.png'),
                                              fit: BoxFit
                                                  .cover, // Adjust fit as needed
                                              opacity:
                                                  0.4, // Optional: make it faint under gradient
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 10),
                                            child: Stack(
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                      child: Row(
                                                        children: [
                                                          Image.asset(
                                                            'lib/assets/logo.png',
                                                            height: 50,
                                                            width: 50,
                                                          ),
                                                          const SizedBox(
                                                              width: 5),
                                                          Text(
                                                              "Saravana Jewels",
                                                              style: UserST1),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 1,
                                                              left: 30,
                                                              right: 10),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                              "${data?.data?[index].schemeName} Savings",
                                                              style: UserST),
                                                          Text(
                                                              "Easy | Flexibility",
                                                              style: walletT3),
                                                          Text("Convenient",
                                                              style: walletT3),
                                                        ],
                                                      ),
                                                    ),
                                                    const SizedBox(height: 15),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 30,
                                                              right: 50),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          ElevatedButton(
                                                            onPressed: () {
                                                              setState(() {
                                                                backhome = true;
                                                              });
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          JoinDigitGold(
                                                                    digiSchemeData:
                                                                        data?.data?[
                                                                            index],
                                                                  ),
                                                                ),
                                                              ).then((onValue) {
                                                                if (onValue ==
                                                                    true) {
                                                                  ref.refresh(
                                                                      getDigiSchemeProvider);
                                                                }
                                                              });
                                                            },
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              backgroundColor:
                                                                  backhome
                                                                      ? Colors
                                                                          .yellow
                                                                      : Colors
                                                                          .white,
                                                              foregroundColor:
                                                                  Colors.black,
                                                              side: BorderSide(
                                                                  color: Colors
                                                                      .yellow
                                                                      .shade700),
                                                              elevation: 2,
                                                            ),
                                                            child: Text(
                                                                '   Join Now   ',
                                                                style: planST),
                                                          ),
                                                          ElevatedButton(
                                                            onPressed: () {
                                                              setState(() {
                                                                backhome =
                                                                    false;
                                                              });
                                                              Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                    builder: (context) =>
                                                                        JoinDigitGold(
                                                                            digiSchemeData:
                                                                                data?.data?[index]),
                                                                  ));
                                                            },
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              backgroundColor:
                                                                  Colors.white,
                                                              foregroundColor:
                                                                  Colors.black,
                                                              side: BorderSide(
                                                                  color: Colors
                                                                      .yellow
                                                                      .shade700),
                                                              elevation: 2,
                                                            ),
                                                            child: Text(
                                                                'Know More',
                                                                style: gramST),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    const SizedBox(height: 20),
                                                  ],
                                                ),
                                                Positioned(
                                                  bottom: 10,
                                                  right: 10,
                                                  child: Image.asset(
                                                    'assets/sha1.png',
                                                    fit: BoxFit.contain,
                                                    height: 200,
                                                    width: 200,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                            });
                      } else {
                        return const SizedBox(height: 10);
                      }
                    }, error: (Object error, StackTrace stackTrace) {
                      return const Text('');
                    }, loading: () {
                      return const CircularProgressIndicator();
                    }),

                    bannerimagedata.when(data: (data) {
                      List<Widget> carouselItems =
                          data?.data?.map<Widget>((item) {
                                return _carouselImg(context,
                                    item.bannerImg); // Pass the item to your _carouselImg method
                              }).toList() ??
                              [];

                      return
                          //CAROSEL BANNER
                          Container(
                        color: white1,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              //CAROSEL SLIDER

                              CarouselSlider(
                                  items: carouselItems,
                                  options: CarouselOptions(
                                    autoPlay: true,
                                    viewportFraction: 1,
                                    enlargeCenterPage: true,
                                    aspectRatio: 16 / 9,
                                    autoPlayAnimationDuration:
                                        const Duration(milliseconds: 800),
                                    onPageChanged: (index, reason) {
                                      setState(() {
                                        myCurrentPage = index;
                                      });
                                    },
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: AnimatedSmoothIndicator(
                                  activeIndex: myCurrentPage,
                                  count: carouselItems.length,
                                  effect: const ExpandingDotsEffect(
                                      dotHeight: 5,
                                      dotWidth: 5,
                                      activeDotColor: gradient1),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      );
                    }, error: (Object error, StackTrace stackTrace) {
                      return Text("$error");
                    }, loading: () {
                      return const CircularProgressIndicator();
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
//LOCATION DROPDOWN
// Widget _Location_Dropdown(){
//     return  Padding(
//       padding: const EdgeInsets.only(top: 10,bottom: 10),
//       child: Center(
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Today Gold Rate  -",style: skip_ST,),
//
//             homedropDownFieldprofileedit(
//               context,
//               width: MediaQuery.sizeOf(context).width/2.5,
//               hintT: 'Coimbatore',
//               value: location,
//               listValue: locationoption,
//               onChanged: (String? newValue) {
//                 setState(() {
//                   location = newValue;
//                 });
//               },
//             ),
//           ],
//         ),
//       ),
//     );
// }
}

//CAROUSEL IMG STACK
Widget _carouselImg(context, imageURL) {
  return Container(
    height: 185,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(15),
      image: DecorationImage(image: NetworkImage(imageURL), fit: BoxFit.cover),
    ),
  );
}

class GoldScrollPriceWidget extends ConsumerStatefulWidget {
  GoldRateModel? data;

  GoldScrollPriceWidget({required this.data});

  @override
  _GoldScrollPriceWidgetState createState() => _GoldScrollPriceWidgetState();
}

class _GoldScrollPriceWidgetState extends ConsumerState<GoldScrollPriceWidget> {
  // Timer? _timer;
  // final ScrollController _scrollController = ScrollController();
  // int _counter = 0;
  // double scrollIncrement = 2.0;
  //
  // @override
  // void initState() {
  //   super.initState();
  //   _timer = Timer.periodic(Duration(milliseconds: 20), (timer) {
  //     _scrollList();
  //   });
  // }
  //
  // @override
  // void dispose() {
  //   _timer?.cancel();
  //   super.dispose();
  // }
  //
  // void _scrollList() {
  //   double maxScrollExtent = _scrollController.position.maxScrollExtent;
  //   double currentScroll = _scrollController.position.pixels;
  //
  //   if (currentScroll >= maxScrollExtent) {
  //     _scrollController.jumpTo(0);
  //     _counter = 0;
  //   } else {
  //     _scrollController.jumpTo(currentScroll + scrollIncrement);
  //     _counter++;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                '1 GM Gold',
                style: gramST, // Style for the title
              ),
              const SizedBox(width: 5),
              Text(
                '₹ ${widget.data?.data?.gold22ct ?? ""}', // Display the price
                style: gramrateST, // Style for the price
              ),
            ],
          ),
          double.parse((widget.data?.data?.goldRateDifference ?? "0.0")
                      .replaceAll(',', '')) <
                  0
              ? const Icon(
                  Icons.arrow_downward_outlined,
                  color: Colors.black,
                  size: 18,
                )
              : const Icon(
                  Icons.arrow_upward_outlined,
                  color: Colors.red,
                  size: 18,
                ),
          const Spacer(),
          Row(
            children: [
              Text(
                '1 Silver',
                style: gramST,
              ),
              const SizedBox(width: 5),
              Text(
                '₹ ${widget.data?.data?.silverG ?? ""}',
                style: gramrateST,
              ),
            ],
          ),
          double.parse(widget.data?.data?.silverRateDifference ?? "0.0") < 0
              ? const Icon(
                  Icons.arrow_downward_outlined,
                  color: Colors.black,
                  size: 18,
                )
              : const Icon(
                  Icons.arrow_upward_outlined,
                  color: Colors.red,
                  size: 18,
                ),
          // const SizedBox(width: 20,),
          // Text(
          //   'Platinum : ',
          //   style: gramST,
          // ),
          // Text(
          //   '₹ ${widget.data?.data?.platinum ?? ""}',
          //   style: gramrateST,
          // ),
        ],
      ),
    );
  }
}
