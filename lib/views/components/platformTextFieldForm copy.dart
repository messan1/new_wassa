import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_wassa/views/styles/styles.dart';

abstract class PlatformTextFieldForm {
  static textFieldPlatform(
      {required String title,
      required bool isPassword,
      required double verticalContentPadding,
      required Widget suffix,
      required TextEditingController controller,
      required bool enabled}) {
    BorderRadius borderRadius = BorderRadius.circular(15);
    if (Platform.isIOS) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 2),
            child: Text(
              title.toUpperCase(),
              style: inputStyle,
            ),
          ),
          SizedBox(height: 7),
          CupertinoTextField(
              padding: EdgeInsets.only(
                  right: 5,
                  left: 10,
                  bottom: verticalContentPadding,
                  top: verticalContentPadding),
              controller: controller,
              obscureText: isPassword,
              enabled: enabled,
              suffix: isPassword == true
                  ? Icon(
                      CupertinoIcons.eye_slash_fill,
                      color: blackFont.withOpacity(.35),
                    )
                  : suffix,
              decoration: BoxDecoration(
                border: Border.all(width: .95, color: greyFont),
                borderRadius: borderRadius,
                color: greyFont.withOpacity(.45),
              )),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 2),
            child: Text(
              title.toUpperCase(),
              style: inputStyle,
            ),
          ),
          SizedBox(height: 7),
          TextFormField(
            controller: controller,
            obscureText: isPassword,
            enabled: enabled,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(
                    right: 5,
                    left: 10,
                    bottom: verticalContentPadding,
                    top: verticalContentPadding),
                fillColor: greyFont.withOpacity(.45),
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: borderRadius,
                    borderSide: BorderSide(width: .95, color: greyFont)),
                disabledBorder: OutlineInputBorder(
                    borderRadius: borderRadius,
                    borderSide: BorderSide(width: .95, color: greyFont)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: borderRadius,
                    borderSide: BorderSide(width: .95, color: greyFont)),
                errorBorder: OutlineInputBorder(
                    borderRadius: borderRadius,
                    borderSide: BorderSide(width: .95, color: greyFont)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: borderRadius,
                    borderSide: BorderSide(width: .95, color: greyFont)),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: borderRadius,
                    borderSide: BorderSide(width: .95, color: greyFont)),
                suffixIcon: isPassword == true
                    ? Icon(
                        Icons.visibility_off_rounded,
                        color: blackFont.withOpacity(.35),
                      )
                    : suffix),
          ),
        ],
      );
    }
  }

  static textAreaPlatform(
      {required String hintText,
      required bool isPassword,
      required double verticalContentPadding,
      required Widget suffix,
      required TextEditingController controller,
      required bool enabled}) {
    BorderRadius borderRadius = BorderRadius.circular(15);
    if (GetPlatform.isIOS) {
      return CupertinoTextField(
          padding: EdgeInsets.only(
              right: 5,
              left: 10,
              bottom: verticalContentPadding,
              top: verticalContentPadding),
          controller: controller,
          obscureText: isPassword,
          enabled: enabled,
          suffix: isPassword == true
              ? Icon(
                  CupertinoIcons.eye_slash_fill,
                  color: blackFont.withOpacity(.35),
                )
              : suffix,
          decoration: BoxDecoration(
            border: Border.all(width: .95, color: greyFont),
            borderRadius: borderRadius,
            color: greyFont.withOpacity(.45),
          ));
    } else {
      return TextFormField(
        controller: controller,
        minLines: 7,
        maxLines: 8,
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle:
                Styles.ucolisGeneralBlackBoldFont.copyWith(color: greyFont),
            contentPadding: EdgeInsets.only(
                right: 5,
                left: 10,
                bottom: verticalContentPadding,
                top: verticalContentPadding),
            fillColor: greyFont.withOpacity(.45),
            filled: true,
            border: OutlineInputBorder(
                borderRadius: borderRadius,
                borderSide: BorderSide(width: .95, color: greyFont)),
            disabledBorder: OutlineInputBorder(
                borderRadius: borderRadius,
                borderSide: BorderSide(width: .95, color: greyFont)),
            enabledBorder: OutlineInputBorder(
                borderRadius: borderRadius,
                borderSide: BorderSide(width: .95, color: greyFont)),
            errorBorder: OutlineInputBorder(
                borderRadius: borderRadius,
                borderSide: BorderSide(width: .95, color: greyFont)),
            focusedBorder: OutlineInputBorder(
                borderRadius: borderRadius,
                borderSide: BorderSide(width: .95, color: greyFont)),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: borderRadius,
                borderSide: BorderSide(width: .95, color: greyFont)),
            suffixIcon: isPassword == true
                ? Icon(
                    Icons.visibility_off_rounded,
                    color: blackFont.withOpacity(.35),
                  )
                : suffix),
      );
    }
  }
}
