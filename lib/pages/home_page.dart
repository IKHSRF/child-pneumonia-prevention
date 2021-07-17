part of 'pages.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: size.height * .45,
              decoration: BoxDecoration(
                color: primaryColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  Text(
                    "Child Pneumonia Prevention",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: size.height * .05),
                  SizedBox(
                    width: size.width * .6, // it just take 60% of total width
                    child: Text(
                      "Kenali gejala, diagnosis, dan juga pencegahan pneumonia pada anak-anak",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * .07,
                  ),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: <Widget>[
                      SeassionCard(
                        sessionName: "Pneumonia",
                        isDone: true,
                        press: () {
                          Navigator.pushNamed(context, '/detailWithVideo',
                              arguments: 5);
                        },
                      ),
                      SeassionCard(
                        sessionName: "Gejala",
                        press: () {
                          Navigator.pushNamed(context, '/detailWithPhoto',
                              arguments: 0);
                        },
                      ),
                      SeassionCard(
                        sessionName: "Diagnosis",
                        press: () {
                          Navigator.pushNamed(context, '/detailWithPhoto',
                              arguments: 1);
                        },
                      ),
                      SeassionCard(
                        sessionName: "Pencegahan",
                        press: () {
                          Navigator.pushNamed(context, '/detailWithPhoto',
                              arguments: 2);
                        },
                      ),
                      SeassionCard(
                        sessionName: "Epidemiologi",
                        press: () {
                          Navigator.pushNamed(context, '/detailWithPhoto',
                              arguments: 3);
                        },
                      ),
                      SeassionCard(
                        sessionName: "Kasus",
                        press: () {
                          Navigator.pushNamed(context, '/detailWithPhoto',
                              arguments: 4);
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Text(
                    "Share to your friends",
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    padding: EdgeInsets.all(10),
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 17),
                          blurRadius: 23,
                          spreadRadius: -13,
                          color: kShadowColor,
                        ),
                      ],
                    ),
                    child: InkWell(
                      onTap: () {
                        Share.share(
                          'Install aplikasinya sekarang https://example.com',
                        );
                      },
                      child: Row(
                        children: <Widget>[
                          SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Share",
                                  style: TextStyle(
                                    color: kBlueColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Bagikan dengan temanmu agar mereka bisa belajar juga.",
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Container(),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
