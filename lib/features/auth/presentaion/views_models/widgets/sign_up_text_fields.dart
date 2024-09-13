import 'package:cinemax_app/core/utils/app_colors.dart';
import 'package:cinemax_app/core/utils/custom_text_field.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/widgets/pirvacy_policy_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/primary_button.dart';
import '../manger/sign_up_cubit/sign_up_cubit.dart';

class SignUpTextFields extends StatefulWidget {
  const SignUpTextFields({super.key});

  @override
  State<SignUpTextFields> createState() => _SignUpTextFieldsState();
}

class _SignUpTextFieldsState extends State<SignUpTextFields> {
  bool isVisiable = false;
  bool isChecked = false;
  final TextEditingController nameContoller = TextEditingController();
  final TextEditingController emailContoller = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _globalKey = GlobalKey();
  @override
  void dispose() {
    nameContoller.dispose();
    emailContoller.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Yeeey'),
            ),
          );
        }
        if (state is SignUpFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
            ),
          );
        }
      },
      child: Form(
        key: _globalKey,
        child: Column(
          children: [
            CustomTextField(
              controller: nameContoller,
              hintText: 'Enter your name',
              lable: 'Full name',
              onSaved: (data) {
                nameContoller.text = data!;
              },
            ),
            const SizedBox(
              height: 24,
            ),
            CustomTextField(
              controller: emailContoller,
              hintText: 'Enter your email',
              lable: 'Email address',
              onSaved: (data) {
                emailContoller.text = data!;
              },
            ),
            const SizedBox(
              height: 24,
            ),
            CustomTextField(
              controller: passwordController,
              onSaved: (data) {
                passwordController.text = data!;
              },
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
            Row(
              children: [
                Checkbox(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  checkColor: Colors.white,
                  activeColor: AppPrimaryColors.blueAccent,
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                const TermsAndPolicyTexts()
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            PrimaryButton(
              text: 'Sign Up',
              onTap: () async {
                if (_globalKey.currentState!.validate()) {
                  await BlocProvider.of<SignUpCubit>(context).signUp(
                      email: emailContoller.text,
                      password: passwordController.text);
                      setState(() {
                        
                      });
                }
              },
            )
          ],
        ),
      ),
    );
  }
}
