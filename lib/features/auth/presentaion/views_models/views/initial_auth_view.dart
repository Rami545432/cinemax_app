import 'package:flutter/material.dart';

import 'initial_view_body.dart';

class InitialAuthView extends StatelessWidget {
  const InitialAuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: InitialAuthViewBody(),
      ),
    );
  }
}
