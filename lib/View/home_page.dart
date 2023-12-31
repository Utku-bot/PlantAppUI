import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xfffcfeff),
                  Color(0xffddedfe),
                ],
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.chevron_left,
                          size: 35,
                        ),
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 15,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xff44f1a6),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                'assets/images/seeds.png',
                                height: 40,
                              ),
                            ),
                            const SizedBox(width: 10),
                            const Text(
                              'Buy\nseeds',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                                height: 1.2,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      'Sansevieria',
                      style: TextStyle(
                        fontSize: 33,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Autoflower',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black38,
                      ),
                    ),
                    const SizedBox(height: 40),
                    const Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                      child: Text(
                        'Hybrid',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.fiber_manual_record,
                          size: 14,
                          color: Colors.black26,
                        ),
                        SizedBox(width: 30),
                        Icon(
                          Icons.fiber_manual_record,
                          size: 16,
                          color: Colors.black,
                        ),
                        SizedBox(width: 30),
                        Icon(
                          Icons.fiber_manual_record,
                          size: 14,
                          color: Colors.black26,
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    lightText(text: 'Yield'),
                    boldText(text: '± 450 gr'),
                    const SizedBox(height: 25),
                    lightText(text: 'THC'),
                    boldText(text: '14 %'),
                    const SizedBox(height: 25),
                    lightText(text: 'CBD'),
                    boldText(text: '0.2 %'),
                    const SizedBox(height: 25),
                    lightText(text: 'Flowering'),
                    boldText(text: '6-8 weeks'),
                    const SizedBox(height: 30),
                    boldText(text: 'Learn more'),
                    Container(
                      height: 5,
                      width: 50,
                      color: const Color(0xff44f1a6),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Row(
                          children: [
                            Icon(
                              Icons.unfold_more,
                              size: 20,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Compare',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 80,
                          width: 180,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                            child: Text(
                              'Next',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: -180,
            bottom: 150,
            child: Container(
              height: 400,
              width: 400,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xffdde9fa),
                    Color(0xffbdd3f3),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            right: -260,
            bottom: 20,
            child: ClipOval(
              clipper: BottomCircularClipper(),
              child: Image.asset(
                'assets/images/plant.png',
                scale: 0.75,
              ),

            ),
          ),
        ],
      ),
    );
  }

  Text boldText({required String text}) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Text lightText({required String text}) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 14,
        color: Colors.black26,
      ),
    );
  }
}



class BottomCircularClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(140, -20, size.width,
        size.height * 0.805); //
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}