import 'package:cloud_kitchen/Components/form_components.dart';
import 'package:cloud_kitchen/models/Auth.dart';
import 'package:cloud_kitchen/styles/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class LogIn extends StatefulWidget {
  LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController email_controller = new TextEditingController();
  final TextEditingController password_controller = new TextEditingController();

  String errorMessage = "";

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
        Container(
          padding: EdgeInsets.only(top: 10.0),
          margin: EdgeInsets.symmetric(horizontal: 30.0),
          alignment: Alignment.topLeft,
          child: errorMessage.isNotEmpty
              ? (Text('$errorMessage',
                  style:
                      TextStyle(color: appColors['warning'], fontSize: 14.0)))
              : const SizedBox(height: 0),
        ),
        const SizedBox(height: 30.0),
        // Sign In seller Button ---------------------------------------
        GestureDetector(
          onTap: () async {
            // Login User
            var res = await Auth.signInSeller(
                email: email_controller.text,
                password: password_controller.text);
            // Show error message if wrong credentials given
            if (res.containsKey('error')) {
              setState(() {
                errorMessage = res['error']['message'];
              });
            }
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30.0),
            width: MediaQuery.of(context).size.width,
            height: 50.0,
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(25),
              color: appColors['green'],
            ),
            child: const Center(
                child: Text(
              'Sign In',
              style: TextStyle(color: Colors.white, fontSize: 18),
              textAlign: TextAlign.center,
            )),
          ),
        ),

        const SizedBox(height: 20),

        // Register new seller Button ---------------------------------------
        GestureDetector(
          onTap: () {
            // Navigate to register page
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30.0),
            width: MediaQuery.of(context).size.width,
            height: 50.0,
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(25),
              // color: appColors['green'],
              border: Border.all(
                  width: 3,
                  style: BorderStyle.solid,
                  color: appColors['green'] as Color),
            ),
            child: const Center(
                child: Text(
              'Register Kitchen',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            )),
          ),
        ),
        const SizedBox(height: 30.0),
        Text('Forgot Password?',
            style: TextStyle(color: appColors['warning'], fontSize: 14.0)),

        const SizedBox(height: 25.0),
      ],
    ));
  }
}
