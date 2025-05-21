import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jewelone/Common_Widgets/Common_Button.dart';
import 'package:jewelone/Common_Widgets/Custom_App_Bar.dart';
import 'package:jewelone/Common_Widgets/Image_Path.dart';
import 'package:jewelone/Src/FAQ_Ui/FAQ_Screen.dart';
import 'package:jewelone/utilits/Common_Colors.dart';
import 'package:jewelone/utilits/Text_Style.dart';

import '../../utilits/ApiProvider.dart';

class payment_History_Screen extends ConsumerStatefulWidget {
  const payment_History_Screen({super.key});

  @override
  ConsumerState<payment_History_Screen> createState() =>
      _payment_History_ScreenState();
}

class _payment_History_ScreenState
    extends ConsumerState<payment_History_Screen> {
  @override
  Widget build(BuildContext context) {
    final paymenthistorydata = ref.watch(paymenthistoryProvider);
    return Scaffold(
      backgroundColor: white2,
      appBar: Custom_AppBar(
        isNav: true,
        isTwoLine: false,
        title1: 'Payment History',
        title2: '',
        actionLogo: 'info.svg',
        isWhite: false,
        ActiononTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Faq_Screen()));
        },
      ),
      body: paymenthistorydata.when(data: (data) {
        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 50),
            child: Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  //LIST VIEW BUILDER
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        itemCount: data?.responseData?.length ?? 0,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: white1,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween, // Ensures space between elements
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              data?.responseData?[index]
                                                      .schemeName ??
                                                  "",
                                              style: Goldweight,
                                              overflow: TextOverflow.ellipsis,
                                              maxLines: 1,
                                            ),
                                          ],
                                        ),
                                        Text(
                                          data?.responseData?[index]
                                                  .accountNumber ??
                                              "",
                                          style: rate2,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 1,
                                          textAlign: TextAlign
                                              .end, // Aligns it to the right
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween, // Ensures space between elements
                                      children: [
                                        Row(
                                          children: [
                                            ImgPathSvg('Greenright.svg'),
                                            const SizedBox(
                                                width:
                                                    20), // Space between image and text
                                            Text(
                                              data?.responseData?[index]
                                                      .amount ??
                                                  "",
                                              style: bottomotext,
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width /
                                                  5,
                                          decoration: BoxDecoration(
                                            color: grey5,
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 5),
                                          child: Center(
                                            child: Text(
                                              data?.responseData?[index]
                                                      .statusName ??
                                                  "",
                                              style: success,
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          data?.responseData?[index]
                                                  .paymentDate ??
                                              "",
                                          style: planST,
                                        ),
                                        const SizedBox(width: 20),
                                        Container(
                                          margin: const EdgeInsets.all(1),
                                          decoration: BoxDecoration(
                                            color: grey5,
                                            borderRadius:
                                                BorderRadius.circular(50),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 5),
                                            child: Center(
                                              child: Text(
                                                data?.responseData?[index]
                                                        .paymentMode ??
                                                    "",
                                                style: planST,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment
                                          .spaceBetween, // Ensures space between elements
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              'Gold Rate : ${data?.responseData?[index].metalRate ?? ""}',
                                              style: planST,
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Gold Weight : ${data?.responseData?[index].metalWeight ?? ""} g',
                                          style: planST,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  CommonContainerButton(context, onPress: () {
                    Navigator.pop(context);
                  }, titleName: "Back"),
                ],
              ),
            ),
          ),
        );
      }, error: (Object error, StackTrace stackTrace) {
        return Text("ERROR, $error");
      }, loading: () {
        return const Center(child: CircularProgressIndicator());
      }),
    );
  }

// Widget _mainBody() {
//   return
// }
}
