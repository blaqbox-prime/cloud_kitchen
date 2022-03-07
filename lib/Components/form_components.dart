import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  //const InputField({Key key}) : super(key: key);
  final String? title;
  final bool? isObscure;
  final String? placeholder;
  final TextEditingController? controller;
  InputField({this.title, this.placeholder, this.isObscure, this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title!,
          ),
          TextField(
            style: TextStyle(fontSize: 16.0),
            decoration: InputDecoration(hintText: placeholder!),
            obscureText: isObscure!,
            controller: controller,
          ),
        ],
      ),
    );
  }
}
