import 'package:flutter/material.dart';
import 'package:get_post/constants/NewAccEnum.dart';

import 'AppColors.dart';
import 'CustomText.dart';

class CustomRadioTile extends StatefulWidget {
  const CustomRadioTile({Key key, this.text, this.image, this.value, this.groupValue, this.onChange}) : super(key: key);

  final String text;
  final String image;
  final UserType value;
  final UserType groupValue;
  final Function(UserType) onChange;

  @override
  State<CustomRadioTile> createState() => _CustomRadioTileState();
}

class _CustomRadioTileState extends State<CustomRadioTile> {
  @override
  Widget build(BuildContext context) {
    bool selected = widget.value == widget.groupValue;
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
      decoration: BoxDecoration(
        color: selected?AppColors.white
            :AppColors.formColor,
        border: Border.all(
          color: selected?AppColors.primary
              :AppColors.formColor,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: RadioListTile<UserType>(
        value: widget.value,
        activeColor: AppColors.primary,
        groupValue: widget.groupValue,
        title: CustomText(
          title: widget.text,
          size: 14,
          color: selected?AppColors.primary
              :AppColors.formTextColor,
          fontWeight: FontWeight.bold,
        ),
        onChanged: widget.onChange,
        secondary: Image.asset(
          widget.image,
          width: 32.51,
          height: 36.56,
        ),

      ),
    );
  }
}
