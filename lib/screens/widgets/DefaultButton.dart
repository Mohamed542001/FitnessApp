import 'package:flutter/material.dart';

import 'AppColors.dart';
import 'CustomText.dart';


class DefaultButton extends StatelessWidget {

   final String title;
   final Function() onTap;
   final Color color;
   final Color textColor;
   final FontWeight textFontWeight;
   final double textSize;
   final Color borderColor;
   final double width;
   final double elev;
   final BorderRadius borderRadius;
   final EdgeInsets margin;

  DefaultButton(
      {
         this.title,
         this.onTap,
         this.color,
         this.textColor,
         this.textSize,
         this.textFontWeight,
         this.borderColor,
         this.width,
         this.elev,
         this.margin,
         this.borderRadius
      }
      );

  @override
  Widget build(BuildContext context) {
    Color border=borderColor??AppColors.primary;
    return Container(
      width: 323,
      height: 41,
      margin: margin??EdgeInsets.symmetric(horizontal: 10,vertical: 20),
      child: ElevatedButton(
        onPressed: onTap,
        child: CustomText(
          color: textColor??AppColors.buttonTextColor,
          size: textSize??17,
          title: '$title',
          fontWeight: textFontWeight??FontWeight.bold,
        ),
        style: ElevatedButton.styleFrom(
          primary: color??AppColors.primary,

          shape: RoundedRectangleBorder(
            borderRadius: borderRadius??BorderRadius.circular(50),
            side: BorderSide(color: borderColor??border,width: 2),
          ),
          elevation: elev??0,
        ),
      ),
    );
  }
}
