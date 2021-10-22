import 'package:code_test/common/common.dart';
import 'package:code_test/theme/component/text.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

class KTextField extends StatelessWidget {
  final String label;
  final bool autoFocus;

  final bool obscureText;

  final bool enabled;

  final int? maxLength;

  final FocusNode? focusNode;

  final TextAlign textAlign;

  final TextInputType keyboardType;

  final TextCapitalization textCapitalization;

  final InputDecoration decoration;

  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onSubmitted;

  KTextField({
    Key? key,
    this.label = "label Placeholder",
    this.autoFocus = false,
    this.obscureText = false,
    this.enabled = true,
    this.maxLength,
    this.focusNode,
    this.textAlign = TextAlign.start,
    this.keyboardType = TextInputType.text,
    this.textCapitalization = TextCapitalization.sentences,
    this.decoration = const InputDecoration(),
    this.onChanged,
    this.onSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Screen().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: bodyFont(13).copyWith(fontWeight: FontWeight.w500),
          textScaleFactor: Screen().textScaleFactor,
        ).paddingLeft(15),
        SizedBox(
          height: Screen().scaledHeight(3),
        ),
        Container(
          width: Screen().scaledWidth(268),
          height: Screen().scaledHeight(36.56),
          decoration: BoxDecoration(
            border: Border.all(width: 5, color: Colors.white),
            color: Colors.white,
            borderRadius: BorderRadius.circular(23),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFDCCDC1).withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(1, 3), // changes position of shadow
              ),
            ],
          ),
          child: Container(
            width: Screen().scaledWidth(258),
            height: Screen().scaledHeight(25),
            decoration: BoxDecoration(
                color: Color(0xFFC4C4C4),
                borderRadius: BorderRadius.circular(20)),
            child: TextFormField(
              enabled: enabled,
              autofocus: autoFocus,
              obscureText: obscureText,
              maxLength: maxLength,
              textAlign: textAlign,
              focusNode: focusNode,
              keyboardType: keyboardType,
              textCapitalization: textCapitalization,
              onChanged: onChanged,
              onFieldSubmitted: onSubmitted,
              decoration: InputDecoration(border: InputBorder.none),
            ).paddingSymmetric(horizontal: 14,vertical: 2.5),
          ),
        ),
      ],
    );
  }
}


class OTPPinField extends StatelessWidget {
  const OTPPinField({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
          width: Screen().scaledWidth(31),
          height: Screen().scaledHeight(41),
          decoration: BoxDecoration(
            border: Border.all(width: 5, color: Colors.white),
            color: Colors.white,
            borderRadius: BorderRadius.circular(3),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFDCCDC1).withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(1, 3), // changes position of shadow
              ),
            ],
          ),
          child: Container(
            width: Screen().scaledWidth(20),
            height: Screen().scaledHeight(27),
            decoration: BoxDecoration(
                color: Color(0xFFC4C4C4),
                borderRadius: BorderRadius.circular(3)),
           
          ),
        

      
      
    );
  }
}