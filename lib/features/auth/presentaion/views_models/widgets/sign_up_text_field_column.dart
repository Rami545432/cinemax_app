import 'package:flutter/material.dart';

import '../../../../../core/utils/custom_text_field.dart';
import 'terms_check_box.dart';

class SignUpTextFieldsColumn extends StatefulWidget {
  const SignUpTextFieldsColumn({
    super.key,
    required GlobalKey<FormState> globalKey,
    required this.nameContoller,
    required this.emailContoller,
    required this.passwordController,
  }) : _globalKey = globalKey;

  final TextEditingController nameContoller;
  final GlobalKey<FormState> _globalKey;
  final TextEditingController emailContoller;
  final TextEditingController passwordController;

  @override
  State<SignUpTextFieldsColumn> createState() => _SignUpTextFieldsColumnState();
}

class _SignUpTextFieldsColumnState extends State<SignUpTextFieldsColumn> {
  bool isVisiable = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget._globalKey,
      child: Column(
        children: [
          CustomTextField(
            controller: widget.nameContoller,
            hintText: 'Enter your name',
            lable: 'Full name',
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextField(
            controller: widget.emailContoller,
            hintText: 'Enter your email',
            lable: 'Email address',
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextField(
            controller: widget.passwordController,
            hintText: 'Enter Your Password',
            lable: 'Password',
            obscureText: isVisiable ? false : true,
            icon: isVisiable
                ? const Icon(Icons.visibility_rounded)
                : const Icon(Icons.visibility_off),
            onPressed: () {
              setState(
                () {
                  isVisiable = !isVisiable;
                },
              );
            },
          ),
          const SizedBox(
            height: 16,
          ),
          TermsCheckBox(
            globalKey: widget._globalKey,
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
