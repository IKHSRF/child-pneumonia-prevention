import 'package:child_pneumonia_prev/common/utlis.dart';
import 'package:flutter/material.dart';

class OrderButton extends StatelessWidget {
  const OrderButton({
    Key? key,
    required this.size,
    required this.press,
  }) : super(key: key);

  final Size size;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(20),
      width: size.width * 0.7,
      // it will cover 80% of total width
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Kembali Ke Dashboard",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
