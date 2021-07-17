class SplashData {
  final String text;
  final String textDetail;
  final String imagePath;

  SplashData({
    required this.text,
    required this.textDetail,
    required this.imagePath,
  });
}

List splashData = [
  SplashData(
    text: "Gejala Dan Diagnosis",
    textDetail: "Pelajari Gelaja dan Dignosis Pneumonia Pada Anak-anak",
    imagePath: 'assets/illustrations/image2.png',
  ),
  SplashData(
    text: "Pencegahan Dan Juga Kasus",
    textDetail: "Pelajari kasus yang terjadi dan juga cara pencegahannya",
    imagePath: 'assets/illustrations/image3.png',
  ),
  SplashData(
    text: "Media Pembelajaran Menarik",
    textDetail: "Media pembelajaran menarik, disertai foto dan juga video",
    imagePath: 'assets/illustrations/image1.png',
  ),
];
