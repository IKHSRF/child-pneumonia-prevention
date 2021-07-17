class LearnModel {
  final String imagePath;
  final String title;
  final String detail;

  LearnModel({
    required this.imagePath,
    required this.title,
    required this.detail,
  });
}

final learnList = [
  LearnModel(
    imagePath: 'assets/images/pneumonia-symptoms.jpg',
    title: 'Gejala',
    detail:
        'Gejala umum: Demam, batuk,  sakit kepala, nafsu makan kurang, mual, muntah dan diare, napas cepat, napas sesak.',
  ),
  LearnModel(
    imagePath: 'assets/images/diagnosis.jpg',
    title: 'Diagnosis',
    detail:
        'Diagnosa pneumonia ditegakkan berdasarkan gejala yang mengarah, ditemukan kelainan paru pada pemerikasaan fisik dan gambaran infiltrate pada hasil ronsen thoraks',
  ),
  LearnModel(
    imagePath: 'assets/images/pencegahan.jpg',
    title: 'Pencegahan',
    detail:
        'Memberikan asi ekslusif selama 6 Bulan, bagi orang tua untuk tidak merokok di dalam ruangan, tuntaskan imunisasi, pastikan kecukupan gizi anak',
  ),
  LearnModel(
    imagePath: 'assets/images/epidemiologi.png',
    title: 'Epidemiologi',
    detail:
        'pneumonia masih menjadi penyebab tertinggi kematian pada bayi di bawah usia lima tahun (balita) maupun bayi baru lahir. Data dari riset kesehatan dasar (Riskesdas) 2018 menunjukan prevalensi pneumonia naik dari 1,6% pada 2013 menjadi 2% dari populasi balita yang ada di Indonesia pada 2018.',
  ),
  LearnModel(
    imagePath: 'assets/images/kasus.png',
    title: 'Kasus',
    detail:
        'Cakupan penemuan kasus pneumonia dan yang ditangani di Kota Depok tahun 2015 sebanyak 3.662 (17%), tahun 2016 sebanyak 4.579 kasus (22,17%), tahun 2017 sebanyak 2.939 kasus (13,98%) dan tahun 2018 sebanyak 2.408 (24,39%)',
  ),
  LearnModel(
    imagePath: 'assets/images/kasus.png',
    title: 'Pneumonia',
    detail:
        'Pneumonia adalah peradangan dari parenkim paru dimana asinus terisi dengan cairan radang dengan atau tanpa disertai infiltrasi dari sel radang ke dalam dinding alveoli dan rongga interstisium yang ditandai dengan batuk disertai nafas cepat dan atau nafas sesak pada anak usia balita',
  ),
];
