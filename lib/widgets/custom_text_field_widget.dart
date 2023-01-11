import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nhutube/core/configs/app_color.dart';

class CustomTextFieldWidget extends StatefulWidget {
  final Key? textFieldKey;
  final TextEditingController? controller;
  final bool? isPassword;
  final String? hintText;
  final Icon? icon;
  final String? errorText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final TextInputType? inputType;
  final double? height;

  const CustomTextFieldWidget({
    Key? key,
    this.textFieldKey,
    this.controller,
    this.isPassword = false,
    this.hintText,
    this.errorText,
    this.icon,
    this.helperText,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
    this.inputType,
    this.height = 50,
  }) : super(key: key);

  @override
  State<CustomTextFieldWidget> createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  var _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: widget.height!.h,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w),
          child: Row(
            children: [
              widget.icon != null
                  ? SizedBox(width: 6.w)
                  : const SizedBox.shrink(),
              widget.icon != null ? widget.icon! : const SizedBox.shrink(),
              Expanded(
                child: TextFormField(
                  style: GoogleFonts.montserrat(
                    color: Colors.black87,
                    fontSize: 14.sp,
                  ),
                  controller: widget.controller,
                  keyboardType: widget.inputType,
                  key: widget.textFieldKey,
                  obscureText:
                      widget.isPassword! == true ? _obscureText : false,
                  onSaved: widget.onSaved,
                  validator: widget.validator,
                  onFieldSubmitted: widget.onFieldSubmitted,
                  decoration: InputDecoration(
                    hintText: widget.hintText,
                    hintStyle: TextStyle(
                      fontFamily: GoogleFonts.montserrat().fontFamily,
                      color: Colors.black26,
                      fontSize: 14.sp,
                    ),
                    errorText: widget.errorText,
                    helperText: widget.helperText,
                    helperStyle: GoogleFonts.montserrat(
                      color: Colors.black26,
                      fontSize: 14.sp,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.w),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
                child: widget.isPassword == true
                    ? Padding(
                        padding: EdgeInsets.only(right: 6.w),
                        child: Icon(
                          _obscureText
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: _obscureText
                              ? Colors.black12
                              : AppColor.buttonRadient2,
                        ),
                      )
                    : const SizedBox.shrink(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
