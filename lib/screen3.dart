import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Task3 extends StatefulWidget {
  static const String routename = "Task3";

  const Task3({super.key});

  @override
  State<Task3> createState() => _Task3State();
}

class _Task3State extends State<Task3> {
  bool _isSelected = false;
  bool _isSelecte = false;
  bool _isSelect = false;
  bool _isSelec = false;

  @override
  Widget build(BuildContext context) {
    int index = 0;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.black,
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.list_sharp), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.chat), label: ""),
          ]),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  color: Colors.deepOrange,
                  child: Image(
                    image: AssetImage("assets/images/Vector.png"),
                  ),
                ),
              ],
            ),
            Text(
              "Alice Care",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.zero),
                      prefixIcon: Icon(Icons.search_outlined),
                      hintText: "Articles,Video,Audio and More,..."),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ChoiceChip(
                    backgroundColor: Colors.white,
                    label: Text("Discover"),
                    selected: _isSelected,
                    onSelected: (value) {
                      setState(() {
                        _isSelected = value;
                      });
                    },
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.white,
                    label: Text("News"),
                    selected: _isSelecte,
                    onSelected: (value) {
                      setState(() {
                        _isSelecte = value;
                      });
                    },
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.white,
                    label: Text("Most Viewed"),
                    selected: _isSelect,
                    onSelected: (value) {
                      setState(() {
                        _isSelect = value;
                      });
                    },
                  ),
                  ChoiceChip(
                    backgroundColor: Colors.white,
                    label: Text("Saved"),
                    selected: _isSelec,
                    onSelected: (value) {
                      setState(() {
                        _isSelec = value;
                      });
                    },
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
                      "Hot Topics",
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
              Container(
                child: CarouselSlider(
                  items: [
                    Image(
                      image: AssetImage("assets/images/ss.png"),
                      height: double.infinity,
                      width: double.infinity,
                    ),
                    Image(
                      image: AssetImage("assets/images/ss.png"),
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ],
                  options: CarouselOptions(
                    aspectRatio: 15 / 7,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    enlargeCenterPage: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.easeInBack,
                    enableInfiniteScroll: true,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Get Tips",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),

                ],
              ),
              Image(image: AssetImage("assets/images/ll.png")),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "cycle phases and period",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        "see more",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
                    ],
                  )
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
