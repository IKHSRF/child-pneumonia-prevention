import 'package:child_pneumonia_prev/common/utlis.dart';
import 'package:child_pneumonia_prev/models/learn_model.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

import 'back_button.dart';

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key? key,
    required this.itemIndex,
  }) : super(key: key);

  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              learnList[itemIndex].title,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              learnList[itemIndex].detail,
              style: TextStyle(
                height: 1.5,
              ),
            ),
            if (itemIndex == 4) ...[
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () async {
                  await launch('https://www.dinkes.depok.go.id');
                },
                child: Text(
                  "Info : https://www.dinkes.depok.go.id",
                  style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
            SizedBox(height: size.height * 0.1),
            // Free space  10% of total height
            Row(
              children: [
                OrderButton(
                  size: size,
                  press: () {
                    Navigator.pop(context);
                  },
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Share.share(
                        'Install aplikasinya sekarang https://example.com',
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 15),
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.share,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
