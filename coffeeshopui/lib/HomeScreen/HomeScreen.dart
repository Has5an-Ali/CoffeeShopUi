import 'package:coffeeshopui/CommonWidget/listing.dart';
import 'package:coffeeshopui/const/const.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.list),
          actions: [Icon(Icons.person)],
        ),
        body: Column(
          children: [
            // Some Text
            Align(
                alignment: Alignment.center,
                child: day.text.size(22).fontFamily(bold2).make()),

            // SearchBar
            const TextField(
              decoration: InputDecoration(
                  hintText: "Find Your Coffee",
                  fillColor: blackcolor,
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  border: InputBorder.none),
            ).box.roundedFull.padding(EdgeInsets.all(12)).make(),

            // Tab Showing tab for different coffee
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                coffeetype.length,
                (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedindex = index;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: "${coffeetype[index]}"
                          .text
                          .fontFamily(bold2)
                          .size(14)
                          .color(selectedindex == index
                              ? buttoncolor
                              : Colors.white)
                          .makeCentered(),
                    ),
                  );
                },
              ),
            ).box.padding(EdgeInsets.symmetric(horizontal: 12)).make(),
          ],
        ),
      ),
    );
  }
}
