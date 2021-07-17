part of 'pages.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: defaultPadding * 10,
            ),
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding * 4,
                      ),
                      child: Text(
                        splashData[index].text,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: getProportionateScreenWidth(14, context),
                          color: primaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: defaultPadding * 4,
                      ),
                      child: Text(
                        splashData[index].textDetail,
                        style: TextStyle(fontSize: 14.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Spacer(flex: 2),
                    Image.asset(
                      splashData[index].imagePath,
                      height: getProportionateScreenHeight(265, context),
                      width: getProportionateScreenWidth(235, context),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20, context),
                ),
                child: Column(
                  children: [
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index),
                      ),
                    ),
                    Spacer(flex: 2),
                    if (currentPage == 2)
                      CustomButton(
                        onTap: () {
                          Navigator.pushNamed(context, '/home');
                        },
                      ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? primaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
