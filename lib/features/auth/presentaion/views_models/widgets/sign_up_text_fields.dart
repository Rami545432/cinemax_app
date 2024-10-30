import 'package:cinemax_app/constant.dart';
import 'package:cinemax_app/core/utils/go_router.dart';
import 'package:cinemax_app/core/utils/primary_button.dart';
import 'package:cinemax_app/features/auth/presentaion/views_models/widgets/sign_up_text_field_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/functions/show_snack_bar.dart';
import '../manger/sign_up_cubit/sign_up_cubit.dart';

class SignUpTextFields extends StatefulWidget {
  const SignUpTextFields({super.key});

  @override
  State<SignUpTextFields> createState() => _SignUpTextFieldsState();
}

class _SignUpTextFieldsState extends State<SignUpTextFields> {
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
          GoRouter.of(context).pushReplacement(Approuter.kSignInView);
          showSnackBar(context,
              color: Colors.greenAccent,
              text: ' Verification Code  Has Sent Please Verify Your Email ');
        }
        if (state is SignUpFailure) {
          showSnackBar(context,
              color: Colors.redAccent, text: state.errorMessage);
        }
      },
      child: Column(children: [
        SignUpTextFieldsColumn(
          globalKey: _globalKey,
          nameContoller: nameContoller,
          emailContoller: emailContoller,
          passwordController: passwordController,
        ),
        PrimaryButton(
          text: 'Sign Up',
          onTap: () async {
            if (_globalKey.currentState!.validate()) {
              await BlocProvider.of<SignUpCubit>(context).signUp(
                  email: emailContoller.text,
                  password: passwordController.text);
                  fireBaseUser.currentUser!.sendEmailVerification();
            }
          },
        )
      ]),
    );
  }
}
