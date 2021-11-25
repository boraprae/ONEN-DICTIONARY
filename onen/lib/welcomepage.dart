import 'package:flutter/material.dart';

class Welcomepage extends StatefulWidget {
  const Welcomepage({Key? key}) : super(key: key);

  @override
  _WelcomepageState createState() => _WelcomepageState();
}

class _WelcomepageState extends State<Welcomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "ONEN",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF3FC0DF)),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "DICT",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("TEAM DEVERLOP",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
              ],
            ),
            const SizedBox(
              height: 30.0,
            ),
            Container(
              height: 110,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xFF3FC0DF).withOpacity(0.7),
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 90,
                        width: 120,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/nuno.jpg',
                              ),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 27),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Noppain Nilsri",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "6231302009",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "'Give me the LOVE'",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //! --------------------------------------------------------------------------
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 110,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xFFF7AC4B).withOpacity(0.7),
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 90,
                        width: 120,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/karn.jpg',
                              ),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: const [
                          Text(
                            "Siwakait Kanpattaranont ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            "6231302015",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                      Row(
                        children: const [
                          Text(
                            "'มาฟังspotifyกุ!!!'",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            //!----------------------------------------------------------------------------------------------------------
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 110,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xFFEDCEF3).withOpacity(0.7),
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 90,
                        width: 120,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/prae.jpg',
                              ),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 45),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Thachnok Thitu",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "6231302021",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "'TFT GOD!!!'",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //!-----------------------------------------------------------------------------
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 110,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xFFF8450C).withOpacity(0.5),
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 90,
                        width: 120,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/mate.jpg',
                              ),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Phornwanat Boonman",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "6231302012",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "'work hard play hard'",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //!----------------------------------------------------------------------------------------------------
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 110,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: const Color(0xFFC0C6C8).withOpacity(0.7),
              ),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 90,
                        width: 120,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                'assets/images/champ.jpg',
                              ),
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 36),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Sahapol  Polyiam",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "6231302017",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "'handsomeandcool'",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
