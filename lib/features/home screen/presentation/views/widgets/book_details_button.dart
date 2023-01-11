import 'package:flutter/material.dart';

import '../../../../../core/utils/widgets/custom_button.dart';

class BookDetailsButton extends StatelessWidget {
  const BookDetailsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        CustomButton(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomLeft: Radius.circular(12),
            ),
            backgroundColor: Colors.white,
            text: '19.99\$',
            textColor: Colors.black),
        CustomButton(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
            backgroundColor: Color(0xffef8262),
            text: 'Free preview',
            textColor: Colors.white),
      ],
    );
  }
}
