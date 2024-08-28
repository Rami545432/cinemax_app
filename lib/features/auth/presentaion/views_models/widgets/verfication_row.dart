import 'package:cinemax_app/features/auth/presentaion/views_models/widgets/verfication_text_fields.dart';
import 'package:flutter/material.dart';

class VerficationRow extends StatelessWidget {
  const VerficationRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        VerficationTextField(),
        VerficationTextField(),
        VerficationTextField(),
        VerficationTextField(),
      ],
    );
  }
}
