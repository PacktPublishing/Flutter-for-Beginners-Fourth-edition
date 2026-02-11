import 'package:flutter/material.dart';
import 'package:hello_world/Chapter06/verification_code_input.dart';

class VerificationCodeFormField extends FormField<String> {
  VerificationCodeFormField({
    Key? key,
    FormFieldSetter<String>? onSaved,
    FormFieldValidator<String>? validator,
  }) : super(
         key: key,
         validator: validator,
         onSaved: onSaved,
         builder: (FormFieldState<String> field) {
           _VerificationCodeFormFieldState state = field as _VerificationCodeFormFieldState;
           return VerificationCodeInput(
             controller: state._controller,
             borderSide: BorderSide.none,
             onChanged: (_) => print(""),
           );
         },
       );
  @override
  FormFieldState<String> createState() => _VerificationCodeFormFieldState();
}

class _VerificationCodeFormFieldState extends FormFieldState<String> {
  late TextEditingController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: "");
    _controller.addListener(_controllerChanged);
  }

  void _controllerChanged() {
    didChange(_controller.text);
  }

  @override
  void reset() {
    super.reset();
    _controller.text = "";
  }

  @override
  void dispose() {
    _controller?.removeListener(_controllerChanged);
    super.dispose();
  }
}
