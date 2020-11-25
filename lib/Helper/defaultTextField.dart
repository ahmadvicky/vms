import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mrmsios/Helper/color.dart';
import 'package:mrmsios/constant/assets.dart';

class DefaultTextField extends StatefulWidget {

  final String hint;
  final String label;
  final String errorMessage;
  final String obscuringCharacter;
  final bool enabled;
  final Function onTap;
  final Function onChange;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final EdgeInsets margin;
  final bool obscureText;
  final TextInputAction action;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final Function(String) onFieldSubmitted;
  final Function(String) onChanged;
  final Widget suffix;
  final FocusNode focusNode;
  final int maxLines;
  final int minLines;
  final String assets;
  final FocusNode node;
  final BorderRadius borderRadius;
  final Border border;
  final bool enableTextView;
  final Color colorsText;
  final bool isPassword;
  final String suffixIcon;
  final Icons suffixIcons;
  final bool isSearch;
  final Color colorHint;
  final String customSuffixIcon;

  const DefaultTextField(
      {Key key,
        this.hint,
        this.label,
        this.errorMessage,
        this.obscuringCharacter = '●',
        this.enabled = true,
        this.onTap,
        this.action,
        this.keyboardType,
        this.maxLines = 1,
        this.minLines = 1,
        @required this.controller,
        this.margin = const EdgeInsets.all(0),
        this.obscureText,
        this.textInputType = TextInputType.text,
        this.textInputAction = TextInputAction.done,
        this.onFieldSubmitted,
        this.onChanged,
        this.onChange,
        this.suffix,
        this.assets,
        this.node,
        this.borderRadius,
        this.border,
        this.colorsText,
        this.enableTextView,
        this.colorHint,
        this.isPassword,
        this.suffixIcon,
        this.suffixIcons,
        this.customSuffixIcon,
        this.isSearch,
        @required this.focusNode})
      : super(key: key);

  _defaultTextField createState() => _defaultTextField();

}

class _defaultTextField extends State<DefaultTextField> {

  bool isHide;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: widget.margin != null ? widget.margin : EdgeInsets.only(left: 50,right: 50,top: 10,bottom: 10),
      padding: EdgeInsets.only(left: 10,right: 10),
      decoration: BoxDecoration(
        borderRadius: widget.borderRadius != null ? widget.borderRadius : BorderRadius.all(Radius.circular(5)),
        border: widget.border != null ? widget.border : Border.all(color: Colors.grey),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          widget.customSuffixIcon == null ? Container() :
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 8,right: 8),
            height: 30,
            width: 30,
            child: Image.asset(widget.customSuffixIcon),
          ),
          Expanded(
            child: TextFormField(
              controller: widget.controller,
              onChanged: widget.onChanged,
              onTap: widget.onTap,
              obscureText: isHide,
              maxLines: widget.maxLines == null ? 1 : widget.maxLines,
              style: TextStyle(
                color: widget.colorsText,
                fontFamily: Fonts.avenir
              ),
              enabled: widget.enableTextView == null ? true : widget.enableTextView,
              decoration: InputDecoration(
                  hintText: widget.hint,
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  labelStyle: TextStyle(
                    fontFamily: Fonts.avenir,
                  ),
                  hintStyle: TextStyle(
                    fontFamily: Fonts.avenir,
                    color: widget.colorHint == null ? null : widget.colorHint
                  ),
                  suffixIcon: widget.isSearch != null ?
                  IconButton(
                    icon: Icon(Icons.search,color: ColorsState.colorPrimaryBlue,),
                    // Image.asset(widget.suffixIcon,scale: 1,),
                  )
                  : null,
                  prefixIcon: widget.assets == null ? null : IconButton(
                    alignment: Alignment.topLeft,
                    onPressed: (){

                    },
                    icon: Image.asset(widget.assets,scale: 1,alignment: Alignment.topLeft,),
                  )
              ),

            ),
          ),
          widget.suffixIcon == null ? Container() :
          Container(
            margin: EdgeInsets.only(top: 13),
            alignment: Alignment.center,
            height: 20,
            width: 20,
            child: Image.asset(widget.suffixIcon),
          ),
          widget.isPassword ?
          GestureDetector(
            onTap: (){
              print('ish hide => $isHide');

              if(isHide){

                isHide = false;
                setState(() {

                });
              }else{
                isHide = true;

                setState(() {

                });
              }

            },
            child: Container(
              width: 50,
              height: 50,
              child: Icon(Icons.remove_red_eye,color: Colors.grey,),),
          )
              :
          Container()
        ],
      ),
    );

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if(widget.isPassword){
      isHide = true;
    }else{
      print('obbs ${widget.obscureText}');
      if (widget.obscureText == null) {
        isHide = false;
      }else{
        isHide = widget.obscureText;
      }
    }

  }
}

class CustomizedEditText extends StatefulWidget {
  final String hint;
  final String label;
  final String errorMessage;
  final String obscuringCharacter;
  final bool enabled;
  final Function onTap;
  final TextEditingController controller;
  final EdgeInsets margin;
  final bool obscureText;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final Function(String) onFieldSubmitted;
  final Function(String) onChanged;
  final Widget suffix;
  final FocusNode focusNode;
  // final BorderBuilder borderBuilder;
  final int maxLines;
  final int minLines;
  final String assets;
  final String suffixIcon;
  final Border border;
  final BorderRadius borderRadius;
  final bool enableTextView;
  final Color colorText;
  final bool isPassword;
  final bool isSearch;
  final Color colorsHints;
  final String customSuffixIcon;

  const CustomizedEditText(
      {Key key,
        this.hint,
        this.label,
        this.errorMessage,
        this.obscuringCharacter = '●',
        this.enabled = true,
        this.onTap,
        this.maxLines = 1,
        this.minLines = 1,
        @required this.controller,
        this.margin = const EdgeInsets.all(0),
        this.obscureText,
        this.textInputType = TextInputType.text,
        this.textInputAction = TextInputAction.done,
        this.onFieldSubmitted,
        this.onChanged,
        this.suffix,
        this.assets,
        this.borderRadius,
        this.border,
        this.colorText,
        this.enableTextView,
        this.isSearch,
        this.colorsHints,
        this.customSuffixIcon,
        this.suffixIcon,
        this.isPassword = false,
        // this.borderBuilder,
        @required this.focusNode})
      : super(key: key);

  @override
  _CustomizedEditTextState createState() => _CustomizedEditTextState();
}

class _CustomizedEditTextState extends State<CustomizedEditText> {
  bool isError = false;
  bool enabled = true;

  @override
  void initState() {
    super.initState();

    if (widget.onTap != null) {
      enabled = false;
    }

    widget.focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTextField(
      hint: widget.hint,
      // hintColor: ColorPalette.grey,
      label: widget.label != null ? !widget.focusNode.hasFocus ? (widget.controller.text != '' ? widget.label : '') : widget.label : null,
      node: widget.focusNode,
      assets: widget.assets,
      margin: widget.margin,
      maxLines: widget.maxLines,
      minLines: widget.minLines,
      obscureText: widget.obscureText,
      onTap: widget.onTap,
      onFieldSubmitted: widget.onFieldSubmitted,
      onChanged: widget.onChanged,
      keyboardType: widget.textInputType,
      // disabledFontColor: Colors.black,
      action: widget.textInputAction,
      enabled: enabled,
      obscuringCharacter: widget.obscuringCharacter,
      controller: widget.controller,
      suffix: widget.suffix,
      borderRadius: widget.borderRadius,
      border: widget.border,
      enableTextView: widget.enableTextView,
      colorsText: widget.colorText,
      isPassword: widget.isPassword,
      isSearch: widget.isSearch,
      colorHint: widget.colorsHints,
      suffixIcon: widget.suffixIcon,
      customSuffixIcon: widget.customSuffixIcon,
    );
  }
}

