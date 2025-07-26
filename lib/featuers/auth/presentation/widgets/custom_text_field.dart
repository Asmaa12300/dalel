import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({super.key, required this.labelText, this.onChanged, this.onFieldSubmitted,this.obscureText=false,this.suffixIcon});
  final String labelText;
  final Function (String)? onChanged;
  final Function (String)? onFieldSubmitted;
  final bool obscureText;
  final IconButton? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0,left: 8.0,top: 24,),
      child: TextFormField(
        validator: (value){
          if (value!.isEmpty){
            return 'This filed is required';
          }else{
            return null;
          }
        },
        obscureText:obscureText ,
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
        decoration: InputDecoration(
          labelText: labelText ,
          labelStyle: CustomTextStyles.poppins500style18,
          border: getBorderStyle(),
          enabledBorder: getBorderStyle(),
          focusedBorder:getBorderStyle(),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
OutlineInputBorder getBorderStyle(){
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(4),
      borderSide: BorderSide(
        color: AppColors.lightGray,
      )
  );
}


