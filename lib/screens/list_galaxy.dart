import 'package:belajar_flutter/helpers/size_helper.dart';
import 'package:belajar_flutter/screens/Detail_galaxy.dart';
import 'package:flutter/material.dart';

class ListGalaxyScreen extends StatelessWidget {
  final List<Map<String, dynamic>> GalaxyData = [
    {
      "name": "Galaxy Bima Sakti",
      "image": 'images/BimaSakti.jpg',
      "desc":
          "Hingga kini, diyakini bahwa selain berisi Matahari dan planet-planet lain, Galaksi Bima Sakti juga berisi 200 miliar sampai 400 miliar bintang lainnya",
      "description":
          "Galaksi Bima Sakti, sebagai rumah bagi Matahari, planet-planet, dan berbagai fenomena astronomi yang menakjubkan, diyakini oleh para ilmuwan hingga saat ini mengandung sejumlah luar biasa bintang. Diperkirakan bahwa di dalam batasannya, Bima Sakti mencakup rentang jumlah bintang yang mencengangkan, yakni berkisar antara 200 miliar hingga 400 miliar bintang. Melalui observasi dan penelitian yang terus berkembang, astronomi modern terus memberikan wawasan mendalam tentang keragaman dan kompleksitas galaksi kita sendiri, menggambarkan sebuah panorama kosmos yang luar biasa dalam skala dan keberagaman. Seiring teknologi dan metode penelitian terus berkembang, pemahaman kita tentang Galaksi Bima Sakti pun semakin diperkaya, membuka jendela baru menuju misteri-misteri alam semesta yang masih belum terpecahkan."
    },
    {
      "name": "Galacy Andromeda",
      "image": "images/Andromeda.jpg",
      "desc":
          "Galaksi ini berisi sekitar 1 triliun bintang dan bergerak mendekati Bima Sakti dengan kecepatan sekitar 300 km/detik.",
      "description":
          "Galaksi Andromeda, juga dikenal sebagai M31, adalah sebuah keajaiban kosmis yang terletak sekitar 2,5 juta tahun cahaya dari Bumi. Dengan diameter lebih dari 220.000 tahun cahaya, Andromeda menjadi galaksi terbesar dalam kelompok lokal yang juga mencakup Bima Sakti. Keindahan galaksi ini terlihat jelas melalui teleskop, menampilkan spiral yang elegan dengan lengan-lengan berserakan bintang dan debu antargalaksi. Andromeda diperkirakan memiliki populasi bintang yang mencapai ratusan miliar, termasuk berbagai tipe dan usia. Selain itu, galaksi ini sedang menuju arah Bima Sakti dan diperkirakan akan berinteraksi secara gravitasi dengan galaksi kita dalam miliaran tahun mendatang. Andromeda, dengan segala keajaiban dan misterinya, terus menjadi sumber inspirasi dan penelitian dalam eksplorasi kosmos yang tak terbatas."
    },
    {
      "name": "Big magellan Galaxy",
      "image": "images/big-magellan.jpg",
      "desc": "Big Magellan Galaxy",
      "description":
          "Magellan Besar, salah satu dari duo galaksi Magellan yang terletak di belahan langit selatan, memukau dengan kecantikan dan kompleksitasnya yang menakjubkan. Dengan ukuran sekitar 14.000 tahun cahaya, galaksi ini menampilkan struktur spiral yang mencolok, membentuk lengan-lengan berserakan bintang yang memikat. Magellan Besar menjadi rumah bagi berbagai fenomena astronomi, termasuk gugus bintang yang gemerlapan, awan debu gelap, dan region-region pembentukan bintang yang intens. Kehadirannya di langit selatan memberikan pandangan eksklusif bagi para astronom dan pengamat langit, dan perannya sebagai satelit galaksi Bima Sakti menambah kompleksitas dalam pemahaman kita tentang dinamika alam semesta. Dengan terus berkembangnya penelitian, Magellan Besar terus membuka jendela menuju rahasia-rahasia evolusi galaksi dan keajaiban astronomi di cakrawala kosmis.",
    },
    {
      "name": "Small Magellan Galaxy",
      "image": "images/small-magellan.jpg",
      "desc": "Small Magellan Galaxy",
      "description":
          "Magellan Kecil, sebuah galaksi yang memikat di belahan langit selatan, menawarkan pesona astronomi yang memikat. Terletak sekitar 150.000 tahun cahaya dari Galaksi Bima Sakti, galaksi ini, juga dikenal sebagai Small Magellanic Cloud, menghadirkan pemandangan yang memukau dengan ukuran yang lebih kecil tetapi keberagaman objek astronomi yang kaya. Dengan bentuk yang tidak teratur dan berisi gugus-gugus bintang, awan gas bercahaya, serta nebula yang indah, Magellan Kecil menyajikan perpaduan visual yang memikat. Keberadaannya di langit selatan menawarkan para pengamat di belahan bumi bagian utara sebuah jendela langka ke dalam keajaiban alam semesta. Meskipun lebih kecil dari Magellan Besar, saudaranya yang lebih besar, Magellan Kecil terus menjadi subjek penelitian intensif dalam upaya untuk memahami evolusi dan peran galaksi kecil dalam kompleksitas kosmis."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.jpg"), fit: BoxFit.cover),
        ),
        child: ListView.builder(
          itemCount: GalaxyData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailGalaxyScreen(
                              name: GalaxyData[index]["name"],
                              image: GalaxyData[index]["image"],
                              desc: GalaxyData[index]["desc"],
                              description: GalaxyData[index]["description"],
                            )));
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: displayHeight(context) * 0.25,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("${GalaxyData[index]["image"]}"),
                      fit: BoxFit.cover,
                    )),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  child: Text(
                    "${GalaxyData[index]["name"]}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
