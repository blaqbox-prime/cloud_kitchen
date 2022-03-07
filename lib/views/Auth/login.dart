import 'package:cloud_kitchen/Components/form_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class LogInScreen extends StatefulWidget {
  LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final TextEditingController email_controller = new TextEditingController();
  final TextEditingController password_controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Expanded(
          child: Center(
            child: SvgPicture.asset(
              "assets/images/undraw_healthy_options.svg",
              height: 150.0,
              //width: 210.0,
            ),
          ),
        ),
        // Email Field
        InputField(
            title: 'Email',
            placeholder: 'Enter email address',
            isObscure: false,
            controller: email_controller),
        const SizedBox(height: 30.0),
        // Password field
        InputField(
            title: 'Password',
            placeholder: 'Enter Password',
            isObscure: true,
            controller: password_controller),
        const SizedBox(height: 30.0),
        GestureDetector(
          onTap: () {
            // Login User
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30.0),
            width: MediaQuery.of(context).size.width,
            height: 50.0,
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(18),
              color: Colors.lime,
            ),
            child: const Center(
                child: Text(
              'Sign In',
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            )),
          ),
        ),
        const SizedBox(height: 30.0),
        const Text('Forgot Password?', style: TextStyle(color: Colors.red)),
        Container(
          margin: const EdgeInsets.only(top: 5),
          height: 1.0,
          color: Colors.lime[300],
          width: 80.0,
        ),
        const SizedBox(height: 30.0),
      ],
    ));
  }
}
