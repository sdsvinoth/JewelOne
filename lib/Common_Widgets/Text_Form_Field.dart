import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jewelone/Common_Widgets/Image_Path.dart';

import '../utilits/Common_Colors.dart';
import '../utilits/Text_Style.dart';

//TEXTFORM FIELD maks

Widget textFormField(
    {TextEditingController? Controller,
    String? Function(String?)? validating,
    bool? isEnabled,
    void Function(String)? onChanged,
    required String hintText,
      Widget? prefixIcon,
    List<TextInputFormatter>? inputFormatters,
    required TextInputType keyboardtype}) {
  return Container(
    // height: 50,
    child: TextFormField(
      enabled: isEnabled,
      controller: Controller,
      textCapitalization: TextCapitalization.none,
      inputFormatters: inputFormatters,
      validator: validating,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        hintText: hintText,
        hintStyle: lighttext,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: white1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: white1),
        ),
        fillColor: Colors.white,
        filled: true,
      ),
      onChanged: onChanged,
      textInputAction: TextInputAction.next,
      style: Textfield_Style,
      keyboardType: keyboardtype,
    ),
  );
}

//TEXTFORMFIELD BORDER
Widget textFormField_border(
    {TextEditingController? Controller,
      String? Function(String?)? validating,
      bool? isEnabled,
      void Function(String)? onChanged,
      required String hintText,
      Widget? prefixIcon,
      List<TextInputFormatter>? inputFormatters,
      required TextInputType keyboardtype}) {
  return Container(
    // height: 50,
    child: TextFormField(
      enabled: isEnabled,
      controller: Controller,
      textCapitalization: TextCapitalization.none,
      inputFormatters: inputFormatters,
      validator: validating,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        hintText: hintText,
        hintStyle: lighttext,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: borderclr),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: borderclr),
        ),
        fillColor: Colors.white,
        filled: true,
      ),
      onChanged: onChanged,
      textInputAction: TextInputAction.next,
      style: Textfield_Style,
      keyboardType: keyboardtype,
    ),
  );
}

Widget textFormFieldwwithlabelT(
    {TextEditingController? Controller,
      String? Function(String?)? validating,
      bool? isEnabled,
      void Function(String)? onChanged,
      required String hintText,
      required String labeltext,
      Widget? prefixIcon,
      List<TextInputFormatter>? inputFormatters,
      required TextInputType keyboardtype}) {
  return Padding(
    padding: const EdgeInsets.only(top: 10,bottom: 10),
    child: Container(
      // height: 50,
      child: TextFormField(
        enabled: isEnabled,
        controller: Controller,
        textCapitalization: TextCapitalization.none,
        inputFormatters: inputFormatters,
        validator: validating,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          hintText: hintText,
          hintStyle: lighttext,
          labelText: labeltext,
          prefixIcon: prefixIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: borderclr),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(color: borderclr),
          ),
          fillColor: Colors.white,
          filled: true,
        ),
        onChanged: onChanged,
        textInputAction: TextInputAction.next,
        style: Textfield_Style,
        keyboardType: keyboardtype,
      ),
    ),
  );
}

Widget textField(
    {TextEditingController? Controller,
      String? Function(String?)? validating,
      bool? isEnabled,
      void Function(String)? onChanged,
      required String hintText,
      Widget? prefixIcon,
      List<TextInputFormatter>? inputFormatters,
      required TextInputType keyboardtype}) {
  return Container(
    child: TextFormField(
      enabled: isEnabled,
      controller: Controller,
      textCapitalization: TextCapitalization.none,
      inputFormatters: inputFormatters,
      validator: validating,
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(borderSide: BorderSide(color: white10)),
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        hintText: hintText,
        hintStyle: phoneHT,
        prefixIcon: prefixIcon,
        fillColor: Colors.white,
        filled: true,
      ),
      onChanged: onChanged,
      textInputAction: TextInputAction.next,
      style: Textfield_Style,
      keyboardType: keyboardtype,
    ),
  );
}



Widget droptextFormField(
    {TextEditingController? Controller,
      String? Function(String?)? validating,
      bool? isEnabled,
      void Function(String)? onChanged,
      required String hintText,
      Widget? prefixIcon,
      List<TextInputFormatter>? inputFormatters,
      required TextInputType keyboardtype}) {
  return Container(
    // height: 50,
    child: TextFormField(
      enabled: isEnabled,
      controller: Controller,
      textCapitalization: TextCapitalization.none,
      inputFormatters: inputFormatters,
      validator: validating,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        hintText: hintText,
        hintStyle: lighttext,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: grey5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: grey5),
        ),
        fillColor: white2,
        filled: true,
      ),
      onChanged: onChanged,
      textInputAction: TextInputAction.next,
      style: Textfield_Style,
      keyboardType: keyboardtype,
    ),
  );
}

//white
Widget textFormField2(
    {TextEditingController? Controller,
    String? Function(String?)? validating,
    bool? isEnabled,
    void Function(String)? onChanged,
    required String hintText,
    List<TextInputFormatter>? inputFormatters,
    required TextInputType keyboardtype}) {
  return Container(
    // height: 50,
    child: TextFormField(
      enabled: isEnabled,
      controller: Controller,
      textCapitalization: TextCapitalization.none,
      inputFormatters: inputFormatters,
      validator: validating,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w400,
          fontSize: 16.0,
          color: Colors.grey,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: white1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: white1),
        ),
        fillColor: white1,
        filled: true,
      ),
      onChanged: onChanged,
      textInputAction: TextInputAction.next,
      style: Textfield_Style,
      keyboardType: keyboardtype,
    ),
  );
}

Widget TextFieldDatePicker({TextEditingController? Controller,
  String? Function(String?)? validating,
  void Function(String)? onChanged,required String hintText,void Function()? onTap}){
  return  SizedBox(
    width: 165,
    child: TextFormField(
      controller:Controller ,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onTap: onTap,
      readOnly: true,
      keyboardType: TextInputType.number,
      maxLength: 15,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: pink1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: pink1),
        ),
        counterText: "",
        hintText: '00/00/0000',
        //helperStyle: HintST,
        suffixIcon: const Icon(Icons.calendar_month,
          color:grey1,
          size: 24,),
        hintStyle: const TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w400,
          fontSize: 12.0,
          color: Colors.grey,
        ),
        errorMaxLines: 1,
        contentPadding: const EdgeInsets.only(
            top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
        fillColor: white1,
        filled: true,
      ),
      validator: validating,
      onChanged: onChanged,
      textInputAction: TextInputAction.next,
      style: const TextStyle(
        fontFamily: "Inter",
        fontWeight: FontWeight.w400,
        fontSize: 14.0,
        color: Colors.black,
      ),
    ),
  );
}

//TEXTFIELD DATE PICKER
Widget TextFieldDatePickerF(context,{TextEditingController? Controller,
  String? Function(String?)? validating,
  void Function(String)? onChanged,required String hintText,void Function()? onTap}){
  return  SizedBox(
    width: MediaQuery.sizeOf(context).width,
    child: TextFormField(
      controller:Controller ,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onTap: onTap,
      readOnly: true,
      keyboardType: TextInputType.number,
      maxLength: 15,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: pink1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: pink1),
        ),
        counterText: "",
        hintText: 'DD/MM/YYYY',
        helperStyle: lighttext,
        prefixIcon: const Icon(Icons.calendar_month,
          color:grey1,
          size: 24,),
        hintStyle: const TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w400,
          fontSize: 12.0,
          color: Colors.grey,
        ),
        errorMaxLines: 1,
        contentPadding: const EdgeInsets.only(
            top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
        fillColor: white1,
        filled: true,
      ),
      validator: validating,
      onChanged: onChanged,
      textInputAction: TextInputAction.next,
      style: const TextStyle(
        fontFamily: "Inter",
        fontWeight: FontWeight.w400,
        fontSize: 14.0,
        color: Colors.black,
      ),
    ),
  );
}

Widget TextFieldDatePickerprofile({
  TextEditingController? Controller,
  String? Function(String?)? validating,
  void Function(String)? onChanged,required String hintText,void Function()? onTap}){
  return  SizedBox(
    width: 150,
    child: TextFormField(
      controller:Controller ,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onTap: onTap,
      readOnly: true,
      keyboardType: TextInputType.number,
      maxLength: 15,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: borderclr),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: borderclr),
        ),
        counterText: "",
        hintText: '00/00/0000',
        //helperStyle: HintST,
        suffixIcon: const Icon(Icons.calendar_month,
          color:grey1,
          size: 24,),
        hintStyle: const TextStyle(
          fontFamily: "Inter",
          fontWeight: FontWeight.w400,
          fontSize: 12.0,
          color: Colors.grey,
        ),
        errorMaxLines: 1,
        contentPadding: const EdgeInsets.only(
            top: 8.0, bottom: 8.0, left: 16.0, right: 16.0),
        fillColor: white1,
        filled: true,
      ),
      validator: validating,
      onChanged: onChanged,
      textInputAction: TextInputAction.next,
      style: const TextStyle(
        fontFamily: "Inter",
        fontWeight: FontWeight.w400,
        fontSize: 14.0,
        color: Colors.black,
      ),
    ),
  );
}


// TEXT FIELD PASSWORD
Widget textFieldPassword(
    {TextEditingController? Controller,
    String? Function(String?)? validating,
    void Function(String)? onChanged,
    required bool obscure,
    required void Function()? onPressed,
    required String hintText,
    required TextInputType keyboardtype}) {
  return Container(
    // height: 50,
    child: TextFormField(
      controller: Controller,
      obscureText: obscure,
      validator: validating,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        hintText: hintText,
        hintStyle: lighttext,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: white2),
            borderRadius: BorderRadius.circular(10)),
          prefixIcon: const Icon(Icons.lock,color: white11,),
          suffixIcon: IconButton(
            icon:obscure ? ImgPathSvg("eyeclose.svg") : const Icon(
               Icons.remove_red_eye_outlined,
              color: Colors.black,
            ),
          onPressed: onPressed,
        ),
        fillColor: white1,
        filled: true,
      ),
      onChanged: onChanged,
      
      textInputAction: TextInputAction.next,
      keyboardType: keyboardtype,
      style: Textfield_Style,
    ),
  );
}

Widget textFieldPasswordechange(
    {TextEditingController? Controller,
      String? Function(String?)? validating,
      void Function(String)? onChanged,
      required bool obscure,
      required void Function()? onPressed,
      required String hintText,
      required TextInputType keyboardtype}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 15),
    child: Container(
      // height: 50,
      child: TextFormField(
        controller: Controller,
        obscureText: obscure,
        validator: validating,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          hintText: hintText,
          hintStyle: password2,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: white2),
              borderRadius: BorderRadius.circular(10)),
          suffixIcon: IconButton(
            icon:obscure ? ImgPathSvg("eye.svg") : const Icon(Icons.remove_red_eye_outlined, color: eye,
            ),
            onPressed: onPressed,
          ),
          fillColor: white1,
          filled: true,
        ),
        onChanged: onChanged,
        textInputAction: TextInputAction.next,
        keyboardType: keyboardtype,
        style: Textfield_Style,
      ),
    ),
  );
}

//DESCRIPTION
Widget textfieldDescription(
    {TextEditingController? Controller,
    String? Function(String?)? validating,
    required String hintText,}) {
  return SizedBox(
    height: 50,
    child: TextFormField(
      controller: Controller,
      textCapitalization: TextCapitalization.none,
      maxLines: 10,
      minLines: 2,
      keyboardType: TextInputType.multiline,
      validator: validating,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        hintText: hintText,
        hintStyle: lighttext,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: borderclr),
          borderRadius: BorderRadius.circular(10)  ,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: borderclr),
          borderRadius: BorderRadius.circular(10),
        ),
        fillColor: white2,
        filled: true,
      ),
      textInputAction: TextInputAction.next,
      style: Textfield_Style,
    ),
  );
}

//SEARCH BAR
Widget textFormFieldSearchBar({
  TextEditingController? Controller,
  String? Function(String?)? validating,
  bool? isEnabled,
  void Function(String)? onChanged,
  required String hintText,
  List<TextInputFormatter>? inputFormatters,
  required TextInputType keyboardtype,
  required void Function()? onTap,
}) {
  return Container(
    // height: 50,
    child: TextFormField(
      onTap: onTap,
      enabled: isEnabled,
      controller: Controller,
      textCapitalization: TextCapitalization.none,
      inputFormatters: inputFormatters,
      validator: validating,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        hintText: hintText,
        hintStyle: phoneHT,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: white1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(color: white1),
        ),
        fillColor: white1,
        filled: true,
        prefixIcon: const Icon(
          Icons.search,
          size: 24,
          color: grey2,
        ),
      ),
      onChanged: onChanged,
      textInputAction: TextInputAction.next,
      style: Textfield_Style,
      keyboardType: keyboardtype,
    ),
  );
}

Widget buildCompanyInfoRow(String pathPNG, String companyName,
    TextStyle textStyle, double imageWidth, double imageHeight) {
  return Container(
    child: Row(
      children: [
        Container(
          height: imageHeight,
          width: imageWidth,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                  image: AssetImage("lib/assets/$pathPNG"), fit: BoxFit.cover)),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            child: Text(
              companyName,
              style: textStyle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget collegeRowTitle(String pathPNG, String companyName, TextStyle textStyle,
    double imageWidth, double imageHeight) {
  return Container(
    child: Row(
      children: [
        SizedBox(
          height: imageHeight,
          width: imageWidth,
          child: Image(
            image: AssetImage("lib/assets/$pathPNG"),
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            child: Text(
              companyName,
              style: textStyle,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    ),
  );
}

//DropDownExperience
Widget dropDownField(
  context, {
  required String? value,
  required List<String>? listValue,
  required void Function(String?)? onChanged,
}) {
  return Container(
    height: 50,
    width: MediaQuery.of(context).size.width/2.8,
    decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(10), color: backGroundColor),
    child: DropdownButtonFormField<String>(
      value: value,
      isExpanded: false,
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        hintStyle: phoneHT,
      ),
      icon: const Icon(
        Icons.keyboard_arrow_down_sharp,
        color: Font_Primary_Color,
        size: 30,
      ),
      items: listValue?.map((String option) {
        return DropdownMenuItem<String>(
          value: option,
          child: Text(option,style: dropDownST,),
        );
      }).toList(),
      onChanged: onChanged,
    ),
  );
}

Widget SSPtextFormField({
  TextEditingController? controller,
  String? Function(String?)? validating,
  bool? isEnabled,
  void Function(String)? onChanged,
  required String hintText,
  Widget? prefixIcon,
  List<TextInputFormatter>? inputFormatters,
  required TextInputType keyboardtype,
  TextCapitalization textCapitalization = TextCapitalization.sentences, // Corrected type
}) {
  return Container(
    child: TextFormField(
      enabled: isEnabled,
      controller: controller,
      textCapitalization: textCapitalization, // Corrected usage
      inputFormatters: inputFormatters,
      validator: validating,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        hintText: hintText,
        hintStyle: light,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: grey5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: grey5),
        ),
        fillColor: Colors.white,
        filled: true,
      ),
      onChanged: onChanged,
      textInputAction: TextInputAction.next,
      style: Textfield_Style,
      keyboardType: keyboardtype,
    ),
  );
}


Widget dropDownFieldprofileedit(
    context, {
      required dynamic width,
      required String? value,
      required List<String>? listValue,
      required void Function(String?)? onChanged,
      required String hintT,
    }) {
  return Container(
    height: 45,
    width: width,
    decoration:
    BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: backGroundColor,
      border: Border.all(width: 1,color: borderclr),
    ),
    child: DropdownButtonFormField<String>(
      value: value,
      isExpanded: true,
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        hintStyle: lighttext,
        hintText: hintT,
      ),
      icon: const Padding(
        padding: EdgeInsets.only(right: 10,),
        child: Icon(
          Icons.keyboard_arrow_down_sharp,
          color: Colors.black,
          size: 20,
        ),
      ),
      items: listValue?.map((String option) {
        return DropdownMenuItem<String>(
          value: option,
          child: Center(child: Text(option,style: radioST,)),
        );
      }).toList(),
      onChanged: onChanged,
    ),
  );
}

Widget dropDownFieldRightArrow(
    BuildContext context, {
      required double width,
      required String? value,
      required List<String>? listValue,
      required void Function(String?)? onChanged,
      required String hintT,
    }) {
  return Container(
    height: 45,
    width: width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      color: backGroundColor,
      border: Border.all(width: 1, color: borderclr),
    ),
    child: DropdownButtonHideUnderline(
      child: DropdownButton2<String>(
        value: value,
        isExpanded: true,
        hint: Text(hintT, style: lighttext),
        items: listValue?.map((String option) {
          return DropdownMenuItem<String>(
            value: option,
            child: Center(child: Text(option, style: radioST)),
          );
        }).toList(),
        onChanged: onChanged,
        buttonStyleData: ButtonStyleData(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: width,
          decoration: BoxDecoration(
            color: backGroundColor,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        iconStyleData: const IconStyleData(
          icon: Icon(
            Icons.arrow_forward_ios, // Right arrow icon
            color: Colors.black,
            size: 20,
          ),
        ),
      ),
    ),
  );
}


Widget homedropDownFieldprofileedit(
    context, {
      required dynamic width,
      required String? value,
      required List<String>? listValue,
      required void Function(String?)? onChanged,
      required String hintT,
    }) {
  return Container(
    height: 45,
    width: width,
    decoration:
    BoxDecoration(
      borderRadius: BorderRadius.circular(5),
     color: backGroundColor
    ),
    child: DropdownButtonFormField<String>(
      value: value,
      isExpanded: true,
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(horizontal: 10.0),
        hintStyle: dropDownST,
        hintText: hintT,
      ),
      icon: const Icon(Icons.keyboard_arrow_down_sharp,color: Font_Primary_Color,),
      //icon: ImgPathSvg('homedownarrow.svg'),
      items: listValue?.map((String option) {
        return DropdownMenuItem<String>(
          value: option,
          child: Text(option,style: dropDownST,),
        );
      }).toList(),
      onChanged: onChanged,
    ),
  );
}



