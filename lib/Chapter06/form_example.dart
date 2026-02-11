import 'package:flutter/material.dart';

class FormExample extends StatelessWidget {
  const FormExample({super.key});

  @override
  Widget build(BuildContext topContext) {
    return Form(
      child: Column(
        children: <Widget>[
          TextFormField(),
          TextFormField(),
          Builder(
            builder: (BuildContext subContext) => TextButton(
              onPressed: () {
                final valid = Form.of(subContext).validate();
                print("valid: $valid");
              },
              child: Text("validate"),
            ),
          ),
        ],
      ),
    );
  }
}
