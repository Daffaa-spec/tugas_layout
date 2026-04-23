import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Khing MU"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 253, 2, 2),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // 2 KOTAK ATAS
          Row(
            children: [
              Expanded(
                child: buildImageCard(
                  "https://static.republika.co.id/uploads/images/inpicture_slide/stadion-old-trafford-manchester-united-inggris-_131019170224-314.jpg",
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: buildImageCard(
                  "https://awsimages.detik.net.id/community/media/visual/2017/05/23/0592f917-ddf6-4b37-b555-61bfcc7affa5_169.jpg?w=600&q=90",
                ),
              ),
            ],
          ),

          SizedBox(height: 20),

          // MENU ICON
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildMenu(Icons.sports_soccer, "Jadwal"),
              buildMenu(Icons.favorite, "Favorite"),
              buildMenu(Icons.newspaper, "Berita"),
            ],
          ),

          SizedBox(height: 30),

          // ISI TEXT
          Text(
            "Stadion Old Trafford, Kandang Setan Merah",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "Old Trafford adalah stadion sepak bola ikonik yang terletak di Manchester dan menjadi markas dari klub legendaris Manchester United. Stadion ini pertama kali dibuka pada tahun 1910 dan dikenal dengan julukan “The Theatre of Dreams,” sebuah sebutan yang dipopulerkan oleh Bobby Charlton. Dengan kapasitas lebih dari 70.000 penonton, Old Trafford merupakan salah satu stadion terbesar di Inggris dan sering menjadi tuan rumah berbagai pertandingan penting, baik di level domestik maupun internasional.. ",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 14),
          ),

          SizedBox(height: 20),

          Text(
            "Sebagai salah satu stadion paling bersejarah dalam dunia sepak bola, Old Trafford telah menyaksikan berbagai momen bersejarah, termasuk kemenangan besar Manchester United di berbagai kompetisi seperti Premier League dan UEFA Champions League. Selain digunakan untuk pertandingan sepak bola, stadion ini juga menjadi destinasi wisata populer bagi penggemar olahraga dari seluruh dunia. Fasilitas modern yang terus diperbarui, serta atmosfer luar biasa dari para pendukung setia, menjadikan Old Trafford sebagai simbol kejayaan dan tradisi dalam dunia sepak bola.",
            textAlign: TextAlign.justify,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  // GAMBAR NETWORK
  Widget buildImageCard(String imageUrl) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(imageUrl, height: 120, fit: BoxFit.cover),
      ),
    );
  }

  // MENU
  Widget buildMenu(IconData icon, String title) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 0, 0),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Icon(icon, color: Colors.white, size: 30),
        ),
        SizedBox(height: 8),
        Text(title, style: TextStyle(fontWeight: FontWeight.w500)),
      ],
    );
  }
}
