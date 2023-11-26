import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromRGBO(62, 36, 17, 1),
                    const Color.fromRGBO(48, 14, 32, 1)
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset("assets/images/logo.png", width: 40),
                            SizedBox(width: 10),
                            Text(
                              "Music",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.podcasts, color: Colors.white, size: 20),
                            SizedBox(width: 20),
                            Icon(Icons.search, color: Colors.white, size: 20),
                            SizedBox(width: 20),
                            CircleAvatar(
                              radius: 20,
                              backgroundImage:
                                  AssetImage("assets/images/pp.jpg"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoryItem("Energize"),
                        CategoryItem("Workout"),
                        CategoryItem("Feel good"),
                        CategoryItem("Relaxation"),
                        CategoryItem("Chill out"),
                        CategoryItem("Rock"),
                        CategoryItem("Pops"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                color: const Color.fromRGBO(7, 5, 8, 1),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "START RADIO FROM A SONG",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 186, 186, 186),
                            fontSize: 12,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Quick picks",
                              style: TextStyle(
                                color: Color.fromRGBO(255, 225, 225, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 3.0, bottom: 3.0, left: 9.0, right: 9.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Text(
                                "Play all",
                                style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 186, 186, 186),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        MusicRow("assets/images/cover1.png", "Masal", "Motive"),
                        MusicRow("assets/images/cover7.jpg", "Yalancı Bahar",
                            "Selin"),
                        MusicRow("assets/images/cover2.jpg",
                            "The Fİnal Countdown", "Europe"),
                        MusicRow(
                            "assets/images/cover3.jpg", "araf", "mor ve ötesi"),
                        MusicRow("assets/images/cover4.jpg", "Beni Sen İnandır",
                            "Pinhani"),
                        MusicRow("assets/images/cover5.jpg",
                            "Aldırma Deli Gönlüm", "Sertab Erener"),
                        MusicRow("assets/images/cover6.jpg", "Demir Attım",
                            "Ebru Gündeş"),
                        MusicRow("assets/images/cover8.jpg", "Ah Benim Hayatım",
                            "Adamlar"),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Forgotten favorites",
                              style: TextStyle(
                                color: Color.fromRGBO(255, 225, 225, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(
                                  top: 3.0, bottom: 3.0, left: 9.0, right: 9.0),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(14),
                              ),
                              child: Text(
                                "Play all",
                                style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 186, 186, 186),
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              MusicRow2("assets/images/cover1.png", "Masal",
                                  "Motive"),
                              MusicRow2("assets/images/cover7.jpg",
                                  "Yalancı Bahar", "Selin"),
                              MusicRow2("assets/images/cover2.jpg",
                                  "The Fİnal Countdown", "Europe"),
                              MusicRow2("assets/images/cover3.jpg", "araf",
                                  "mor ve ötesi"),
                              MusicRow2("assets/images/cover4.jpg",
                                  "Beni Sen İnandır", "Pinhani"),
                              MusicRow2("assets/images/cover5.jpg",
                                  "Aldırma Deli Gönlüm", "Sertab Erener"),
                              MusicRow2("assets/images/cover6.jpg",
                                  "Demir Attım", "Ebru Gündeş"),
                              MusicRow2("assets/images/cover8.jpg",
                                  "Ah Benim Hayatım", "Adamlar"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              color: const Color.fromRGBO(33, 33, 33, 1),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.home,
                            color: Colors.white,
                          ),
                          Text(
                            "Home",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.play_circle,
                            color: Colors.white,
                          ),
                          Text(
                            "Samples",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.explore,
                            color: Colors.white,
                          ),
                          Text(
                            "Explore",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.subscriptions,
                            color: Colors.white,
                          ),
                          Text(
                            "Library",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.slideshow,
                            color: Colors.white,
                          ),
                          Text(
                            "Upgrade",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding MusicRow2(
    String photo,
    String title,
    String artist,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            photo,
            width: 150,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
            artist,
            style: TextStyle(
                color: const Color.fromARGB(255, 181, 181, 181), fontSize: 14),
          ),
        ],
      ),
    );
  }
}

Widget MusicRow(
  String photo,
  String title,
  String artist,
) {
  return Padding(
    padding: const EdgeInsets.only(top: 15.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              photo,
              width: 70,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  artist,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 181, 181, 181),
                      fontSize: 14),
                ),
              ],
            ),
          ],
        ),
        Icon(
          Icons.more_vert,
          color: Colors.white,
        ),
      ],
    ),
  );
}

Container CategoryItem(String text) {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
    margin: const EdgeInsets.only(right: 8),
    decoration: BoxDecoration(
      color: Color.fromARGB(52, 255, 255, 255),
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Color.fromARGB(42, 255, 255, 255)),
    ),
    child: Text(
      text,
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
    ),
  );
}
