import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class task extends StatefulWidget {
  static const String routename = "task";

  task({super.key});

  @override
  State<task> createState() => _taskState();
}

class _taskState extends State<task> {
  int index = 0;
  bool _isSelected = false;
  bool _isSelecte = false;
  bool _isSelect = false;
  bool _isSelec = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 110,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipOval(
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage("assets/images/9.png"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello,jade",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            Text(
              "Ready to workout?",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, top: 50),
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
            BottomNavigationBarItem(icon: Icon(Icons.send), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outlined), label: ""),
          ]),
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Color(0xffF8F9FC),
                  width: 105,
                  height: 100,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.heart_broken),
                            Text("Heart rate")
                          ],
                        ),
                      ),
                      Text(
                        "81Bbm",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.black,
                  width: 1,
                  height: 100,
                ),
                Container(
                  color: Color(0xffF8F9FC),
                  width: 105,
                  height: 100,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [Icon(Icons.list), Text("To_do")],
                        ),
                      ),
                      Text(
                        "32.5%",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.black,
                  width: 1,
                  height: 100,
                ),
                Container(
                  color: Color(0xffF8F9FC),
                  width: 105,
                  height: 100,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.calculate_outlined),
                            Text("calo")
                          ],
                        ),
                      ),
                      Text(
                        "1000 cal",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Workout Programs",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    ChoiceChip(
                      selectedColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero),
                      backgroundColor: Colors.orange,
                      label: Text("All type"),
                      selected: _isSelected,
                      onSelected: (value) {
                        setState(() {
                          _isSelected = value;
                        });
                      },
                    ),
                  ],
                ),
                ChoiceChip(
                  selectedColor: Colors.white,
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  backgroundColor: Colors.orange,
                  label: Text("Full body"),
                  selected: _isSelecte,
                  onSelected: (value) {
                    setState(() {
                      _isSelecte = value;
                    });
                  },
                ),
                ChoiceChip(
                  selectedColor: Colors.white,
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  backgroundColor: Colors.orange,
                  label: Text("Upper"),
                  selected: _isSelect,
                  onSelected: (value) {
                    setState(() {
                      _isSelect = value;
                    });
                  },
                ),
                ChoiceChip(
                  selectedColor: Colors.white,
                  shape:
                      RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  backgroundColor: Colors.orange,
                  label: Text("Lower"),
                  selected: _isSelec,
                  onSelected: (value) {
                    setState(() {
                      _isSelec = value;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(width: 50,),
                Container(
                  width: 60,
                  height: 2,
                  color: Colors.black,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Image(image: AssetImage("assets/images/Plank.png")),
            SizedBox(
              height: 10,
            ),
            Image(image: AssetImage("assets/images/p.png")),
          ],
        ),
      ),
    );
  }
}
