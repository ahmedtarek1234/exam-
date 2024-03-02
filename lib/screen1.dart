import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class home extends StatefulWidget {
  static const String routename = "home";

  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Scaffold(
      appBar: AppBar(
        leading: Image(
          image: AssetImage("assets/images/logo.png"),
        ),
        title: Text(
          "Moody",
          style: TextStyle(
              fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: badges.Badge(
              badgeContent: Text("1"),
              child: Icon(
                Icons.notifications,
                color: Colors.black,
                size: 25,
              ),
              badgeAnimation: badges.BadgeAnimation.fade(
                  animationDuration: Duration(seconds: 1)),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined), label: ""),
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: Row(
                children: [
                  Text(
                    "Hello,",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "Sara Rose",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "How are you feeling today?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ClipOval(
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/Frame.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                ClipOval(
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/Frame (1).png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                ClipOval(
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/Group.png"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  child: ClipOval(
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage("assets/images/Group (1).png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Feature",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "see more",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
                  ],
                )
              ],
            ),
            Row(
              children: [
                Container(
                  child: Container(
                    width: 350,
                    height: 250,
                    child: CarouselSlider(
                      items: [
                        Stack(
                          children: [
                            Image(
                              image: AssetImage("assets/images/1.png"),
                              height: double.infinity,
                              width: double.infinity,
                            ),
                            Positioned(
                              top: 142,
                              right: 225,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.play_circle,
                                  color: Colors.green,
                                ),
                              ),
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Image(
                              image: AssetImage("assets/images/1.png"),
                              width: double.infinity,
                              height: double.infinity,
                            ),
                            Positioned(
                              top: 142,
                              right: 225,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.play_circle,
                                  color: Colors.green,
                                ),
                              ),
                            )
                          ],
                        ),
                        Stack(
                          children: [
                            Image(
                              image: AssetImage("assets/images/1.png"),
                              width: double.infinity,
                              height: double.infinity,
                            ),
                            Positioned(
                              top: 142,
                              right: 225,
                              child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.play_circle,
                                  color: Colors.green,
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                      options: CarouselOptions(
                        aspectRatio: 50 / 35,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        enlargeCenterPage: true,
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.easeInBack,
                        enableInfiniteScroll: true,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedSmoothIndicator(
                  activeIndex: 0,
                  count: 3,
                  effect: WormEffect(),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(
                    "Exercise",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "see more",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.green),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 151,
                      height: 56,
                      color: Color(0XFFF9F5FF),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage("assets/images/6.png"),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Beathing",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 151,
                      height: 56,
                      color: Color(0XFFF9F5FF),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage("assets/images/8.png"),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Yoga",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 151,
                      height: 56,
                      color: Color(0XFFF9F5FF),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage("assets/images/5.png"),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Relaxation",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: 151,
                      height: 56,
                      color: Color(0XFFF9F5FF),
                      child: Row(
                        children: [
                          Image(
                            image: AssetImage("assets/images/6.png"),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            "Meditaion",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
