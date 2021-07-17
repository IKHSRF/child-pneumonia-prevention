part of 'pages.dart';

class DetailPenjelasanFoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var item = ModalRoute.of(context)!.settings.arguments.toString();
    int itemIndex = int.parse(item);
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            ItemImage(
              imgSrc: learnList[itemIndex].imagePath,
            ),
            Expanded(
              child: ItemInfo(itemIndex: itemIndex),
            ),
          ],
        ),
      ),
    );
  }
}
