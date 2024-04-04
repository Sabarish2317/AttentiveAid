import 'package:attentive_aid/Utilities/ui_consts/icons_const.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextFieldInput extends StatefulWidget {
  final TextEditingController textEditingController;
  final bool isPassword;
  final String preffixIcon;
  final String suffixIcon;
  final String suffixIconOn;
  final String labelText;

  const TextFieldInput(
      {Key? key,
      required this.textEditingController,
      this.isPassword = false,
      required this.preffixIcon,
      this.suffixIconOn = nullImg,
      this.suffixIcon = nullImg,
      required this.labelText})
      : super(key: key);

  @override
  State<TextFieldInput> createState() => _TextFieldInputState();
}

class _TextFieldInputState extends State<TextFieldInput> {
  late bool isOnOff = widget.isPassword;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isOnOff,
      style: const TextStyle(
          color: Color(0xFF6B6B6B),
          fontSize: 16,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w500,
          letterSpacing: 0.10),
      decoration: InputDecoration(
          constraints: const BoxConstraints(maxHeight: 50),
          isDense: true,
          prefixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(start: 12.0, end: 12.0),
            child: Image.asset(
              widget.preffixIcon,
              height: 24,
              width: 24,
            ),
          ),
          suffixIcon: IconButton(
              splashRadius: 25,
              onPressed: () {
                setState(
                  () {
                    isOnOff = !isOnOff;
                  },
                );
              },
              icon: Image.asset(
                  isOnOff ? widget.suffixIcon : widget.suffixIconOn,
                  height: 24,
                  width: 24)),
          border: InputBorder.none,
          labelText: widget.labelText,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          labelStyle: const TextStyle(
              color: Color(0xFF6B6B6B),
              fontSize: 16,
              fontFamily: 'lato',
              fontWeight: FontWeight.w500,
              letterSpacing: 0.10),
          filled: true,
          fillColor: Colors.white,
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE4DAFF)),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          errorBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 168, 12, 12)),
              borderRadius: BorderRadius.all(Radius.circular(10)))),
    );
  }
}
