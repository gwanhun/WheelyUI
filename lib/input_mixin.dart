import 'package:flutter/material.dart';

mixin InputMixin {
  InputDecoration textInputDecor(String text) {
    return InputDecoration(
      hintStyle: TextStyle(color: Colors.white),
      labelStyle: TextStyle(color: Colors.white),
      labelText: text,
      enabledBorder: activeInputBorder(),
      focusedBorder: activeInputBorder(),
      errorBorder: errorInputBorder(),
      focusedErrorBorder: errorInputBorder(),
    );
  }

  UnderlineInputBorder errorInputBorder() {
    return UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.redAccent,
      ),
    );
  }

  UnderlineInputBorder activeInputBorder() {
    return UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
    );
  }
}
