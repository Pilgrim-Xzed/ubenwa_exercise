import 'package:code_test/common/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Screen().init(context);
    return Container(
      width: Screen().scaledWidth(153),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
          children: [
              Image.asset(Assets.facebook),
              
              Image.asset(Assets.linkedin),
              
             Image.asset(Assets.twitter),
             
              Image.asset(Assets.google)
          ],
          
        ),
      
    );
  }
}