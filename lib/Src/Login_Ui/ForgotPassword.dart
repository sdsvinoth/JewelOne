import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jewelone/Common_Widgets/Common_Button.dart';
import 'package:jewelone/Common_Widgets/Image_Path.dart';
import 'package:jewelone/Common_Widgets/Text_Form_Field.dart';
import 'package:jewelone/Src/Verify_OTP_Ui/Verify_OTP_Screen.dart';
import 'package:jewelone/utilits/ApiProvider.dart';
import 'package:jewelone/utilits/Common_Colors.dart';
import 'package:jewelone/utilits/Generic.dart';
import 'package:jewelone/utilits/Loading_Overlay.dart';
import 'package:jewelone/utilits/Text_Style.dart';

class Forgot_Password_Screen extends ConsumerStatefulWidget {
  const Forgot_Password_Screen({super.key});

  @override
  ConsumerState<Forgot_Password_Screen> createState() => _Forgot_Password_ScreenState();
}

class _Forgot_Password_ScreenState extends ConsumerState<Forgot_Password_Screen> {

  final TextEditingController _phoneNumber = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white2,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.sizeOf(context).height,
            width: MediaQuery.sizeOf(context).width,
            child: Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: _MainBody(),

            ),
          ),
        ),
      ),
    );
  }

  Widget _MainBody(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Back_Logo(context),

        //LOGO
        Center(child: Logo(context)),
        const SizedBox(
          height: 50,
        ),

        Center(child: Text('Forgot Your Password?',style: Heading_Style1,)),



        Padding(
          padding: const EdgeInsets.only(top: 30,bottom: 30),
          child:  textFormField(
            // isEnabled: false,
              hintText: "Phone Number",
              keyboardtype: TextInputType.phone,
              Controller: _phoneNumber,
              inputFormatters: [
                LengthLimitingTextInputFormatter(10),
                FilteringTextInputFormatter.digitsOnly
              ],
              onChanged: null,
              validating: (value) {
                if (value!.isEmpty) {
                  return 'Please Enter a Phone Number';
                } else if (!RegExp(r'^[0-9]{10}$').hasMatch(value)) {
                  return 'Please enter a valid 10-digit Phone Number';
                }
                return null;
              },
              prefixIcon: const Icon(
                Icons.phone_android_sharp,
                color: white11,
              )),
        ),

        // BUTTON
        CommonContainerButton(context,
            onPress: () async {
          if(_formKey.currentState!.validate()){
            LoadingOverlay.show(context);

            Map<String, dynamic> formData = {
              "user": _phoneNumber.text
            };

            final result = await ref.read(ForgotpasswordPostProvider(formData).future);
            LoadingOverlay.forcedStop();
            // Handle the result
            if (result?.errorDetail == true) {
              // ShowToastMessage(result?.message ?? "");
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Verify_OTP_Screen(Mobile_no: _phoneNumber.text,)));
            } else {
              // Handle failure
              ShowToastMessage("Invalid Email");
            }
          }
            }, titleName: 'Get OTP'),

      ],
    );
  }
}
