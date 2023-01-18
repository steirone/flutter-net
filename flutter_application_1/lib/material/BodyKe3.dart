import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class bodyKe3 extends StatelessWidget {
  const bodyKe3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 14,
            ),
            Image(
              image: AssetImage('asset/images/pp.jpg'),
              width: 100,
            ),
            SizedBox(
              height: 14,
            ),
            Text(
              "Shima Rin",
              style: GoogleFonts.lato(color: Colors.white),
            ),
            Text(
              "Ai Developer",
              style: GoogleFonts.lato(color: Colors.white),
            ),
            SizedBox(
              height: 14,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Profile",
                        style: GoogleFonts.lato(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    width: 400,
                    height: 100,
                    child: Container(
                      color: Colors.amber,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Développeur mobile, Freelancer et graphic designer, avec plus qu'une année d'expérience dans le développement mobile autour de la technologie Flutter de Google avec le langague Dart.",
                          style: GoogleFonts.lato(fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Riwayat Sekolah",
                    style: GoogleFonts.lato(color: Colors.white),
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                width: 400,
                height: 100,
                child: Container(
                  color: Color.fromARGB(255, 36, 32, 32),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "SMPN 11 JapanMalaya",
                                  style: GoogleFonts.lato(
                                      fontSize: 20, color: Colors.white),
                                ),
                                Text(
                                  "2007-2010",
                                  style: GoogleFonts.lato(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Container(
                              width: 85,
                              height: 85,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              child: Icon(FontAwesomeIcons.graduationCap,
                                  size: 50),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                width: 400,
                height: 100,
                child: Container(
                  color: Color.fromARGB(255, 36, 32, 32),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "SMKN 2 JapanMalaya",
                                  style: GoogleFonts.lato(
                                      fontSize: 20, color: Colors.white),
                                ),
                                Text(
                                  "2010-2014",
                                  style: GoogleFonts.lato(color: Colors.white),
                                ),
                                Text(
                                  "Teknik Instalasi Tenaga Listrik",
                                  style: GoogleFonts.lato(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Container(
                              width: 85,
                              height: 85,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              child: Icon(FontAwesomeIcons.graduationCap,
                                  size: 50),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                width: 400,
                height: 100,
                child: Container(
                  color: Color.fromARGB(255, 36, 32, 32),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Politeknik Gajah Tunggal",
                                  style: GoogleFonts.lato(
                                      fontSize: 20, color: Colors.white),
                                ),
                                Text(
                                  "2013-2014",
                                  style: GoogleFonts.lato(color: Colors.white),
                                ),
                                Text(
                                  "Software Engineering",
                                  style: GoogleFonts.lato(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7.0),
                            child: Container(
                              width: 85,
                              height: 85,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              child: Icon(FontAwesomeIcons.graduationCap,
                                  size: 50),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Sertifikasi",
                    style: GoogleFonts.lato(color: Colors.white),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  SizedBox(
                    width: 15,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      width: 190,
                      height: 100,
                      child: Container(
                        color: Color.fromARGB(255, 36, 32, 32),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sertifikasi FullStack",
                                style: GoogleFonts.lato(
                                    fontSize: 18, color: Colors.white),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "2020",
                                style: GoogleFonts.lato(color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Universitas Nitip Gajah",
                                style: GoogleFonts.lato(
                                    fontSize: 16, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      width: 190,
                      height: 100,
                      child: Container(
                        color: Color.fromARGB(255, 36, 32, 32),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sertifikasi GameDev",
                                style: GoogleFonts.lato(
                                    fontSize: 18, color: Colors.white),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "2022",
                                style: GoogleFonts.lato(color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Universitas Gajah Mada",
                                style: GoogleFonts.lato(
                                    fontSize: 16, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      width: 190,
                      height: 100,
                      child: Container(
                        color: Color.fromARGB(255, 36, 32, 32),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sertifikasi Flutter",
                                style: GoogleFonts.lato(
                                    fontSize: 18, color: Colors.white),
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Text(
                                "2022",
                                style: GoogleFonts.lato(color: Colors.white),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Inst Teknologi Bandung",
                                style: GoogleFonts.lato(
                                    fontSize: 16, color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Pengalaman",
                        style: GoogleFonts.lato(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox(
                    width: 400,
                    height: 100,
                    child: Container(
                      color: Color.fromARGB(255, 36, 32, 32),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "FrontEnd Developer",
                            style: GoogleFonts.lato(
                                color: Colors.white, fontSize: 22),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "20020-2022",
                            style: GoogleFonts.lato(color: Colors.white),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Text(
                            "Bekerja Di Tokopedia Sebagai FrontEnd Dev",
                            style: GoogleFonts.lato(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Keahlian",
                        style: GoogleFonts.lato(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Container(
                              color: Colors.white,
                              child: Image(
                                  image: AssetImage('asset/images/css.png')),
                            ),
                          ),
                        ),
                        Text(
                          "CSS",
                          style: GoogleFonts.lato(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Container(
                              color: Colors.white,
                              child: Image(
                                  image: AssetImage('asset/images/fe.png')),
                            ),
                          ),
                        ),
                        Text(
                          "Front End Dev",
                          style: GoogleFonts.lato(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Container(
                              color: Colors.white,
                              child: Image.asset('asset/images/be.png'),
                            ),
                          ),
                        ),
                        Text(
                          "Backend Dev",
                          style: GoogleFonts.lato(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Container(
                              color: Color.fromARGB(255, 36, 32, 32),
                              child: Image.asset('asset/images/fs.jpeg'),
                            ),
                          ),
                        ),
                        Text(
                          "Fullstack Dev",
                          style: GoogleFonts.lato(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Container(
                              color: Colors.white,
                              child: Image.asset('asset/images/java.png'),
                            ),
                          ),
                        ),
                        Text(
                          "Java Dev",
                          style: GoogleFonts.lato(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Container(
                              color: Color.fromARGB(255, 36, 32, 32),
                              child: Image(
                                  image: AssetImage('asset/images/fluter.png')),
                            ),
                          ),
                        ),
                        Text(
                          "Android Dev",
                          style: GoogleFonts.lato(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Container(
                              color: Color.fromARGB(255, 36, 32, 32),
                              child: Image(
                                  image: AssetImage('asset/images/sql.png')),
                            ),
                          ),
                        ),
                        Text(
                          "Data Enginer",
                          style: GoogleFonts.lato(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Container(
                              color: Color.fromARGB(255, 36, 32, 32),
                              child: Image(
                                  image: AssetImage('asset/images/cpp.png')),
                            ),
                          ),
                        ),
                        Text(
                          "Game Dev",
                          style: GoogleFonts.lato(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Container(
                              color: Colors.white,
                              child: Image(
                                  image: AssetImage('asset/images/python.png')),
                            ),
                          ),
                        ),
                        Text(
                          "Python Dev",
                          style: GoogleFonts.lato(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
