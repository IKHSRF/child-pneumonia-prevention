import 'package:child_pneumonia_prev/common/utlis.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.onTap,
  });

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 40.0,
          vertical: 16.0,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: primaryColor,
        ),
        child: Text(
          "Lanjutkan Ke Dashboard",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
