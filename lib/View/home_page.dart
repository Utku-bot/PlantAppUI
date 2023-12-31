import 'package:flutter/material.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

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
                padding: EdgeInsets.symmetric(
                    horizontal: 6.361.w, vertical: 2.475.h),
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
                              padding: EdgeInsets.symmetric(
                                horizontal: 3.817.w,
                                vertical: 0.619.h,
                              ),
                              decoration: BoxDecoration(
                                color: const Color(0xff44f1a6),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                'assets/images/seeds.png',
                                height: 4.950.h,
                              ),
                            ),
                            SizedBox(width: 2.545.w),
                            Text(
                              'Buy\nseeds',
                              style: TextStyle(
                                fontSize: 17.sp,
                                fontWeight: FontWeight.bold,
                                height: 1.2,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      'Sansevieria',
                      style: TextStyle(
                        fontSize: 33.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Autoflower',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black38,
                      ),
                    ),
                    SizedBox(height: 4.950.h),
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.634.w, vertical: 1.238
                          .h),
                      child: Text(
                        'Hybrid',
                        style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.fiber_manual_record,
                          size: 14.sp,
                          color: Colors.black26,
                        ),
                        SizedBox(width: 7.634
                        .w),
                        Icon(
                          Icons.fiber_manual_record,
                          size: 16,
                          color: Colors.black,
                        ),
                        SizedBox(width: 7.634
                            .w),
                        Icon(
                          Icons.fiber_manual_record,
                          size: 14,
                          color: Colors.black26,
                        ),
                      ],
                    ),
               SizedBox(height: 3.713
               .h),
                    lightText(text: 'Yield'),
                    boldText(text: '± 450 gr'),
                     SizedBox(height: 3.094
                    .h),
                    lightText(text: 'THC'),
                    boldText(text: '14 %'),
                    SizedBox(height: 3.094
                        .h),
                    lightText(text: 'CBD'),
                    boldText(text: '0.2 %'),
                    SizedBox(height: 3.094
                        .h),
                    lightText(text: 'Flowering'),
                    boldText(text: '6-8 weeks'),
                    SizedBox(height: 3.713
                        .h),
                    boldText(text: 'Learn more'),
                    Container(
                      height: 0.619
                      .h,
                      width: 12.723
                      .w,
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
                            SizedBox(width: 2.545
                            .w),
                            Text(
                              'Compare',
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 9.901
                          .h,
                          width: 45.802
                          .w,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Center(
                            child: Text(
                              'Next',
                              style: TextStyle(
                                fontSize: 18.sp,
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
            right: -45.802
            .w,
            bottom: 18.564
            .h,
            child: Container(
              height: 49.505
              .h,
              width: 101.781
              .w,
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
            right: -66.158
            .w,
            bottom: 2.475
            .h,
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
      style:  TextStyle(
        fontSize: 22.sp,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Text lightText({required String text}) {
    return Text(
      text,
      style:  TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 14.sp,
        color: Colors.black26,
      ),
    );
  }
}

class BottomCircularClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTRB(140, -20, size.width, size.height * 0.805); //
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
