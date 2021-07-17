part of 'pages.dart';

class DetailPenjelasanVideo extends StatelessWidget {
  final String myVideoId = 'IAQp2Zuqevc';

  @override
  Widget build(BuildContext context) {
    var item = ModalRoute.of(context)!.settings.arguments.toString();
    int itemIndex = int.parse(item);

    YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: myVideoId,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
      ),
    );

    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              child: YoutubePlayer(
                controller: _controller,
                liveUIColor: Colors.amber,
              ),
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
