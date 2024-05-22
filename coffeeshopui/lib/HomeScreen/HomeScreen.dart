import 'package:coffeeshopui/CommonWidget/listing.dart';
import 'package:coffeeshopui/const/const.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var selectedindex = 0;
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.list),
          actions: [Icon(Icons.person)],
        ),
        body: Column(
          children: [
            //Some Text
            Align(
                alignment: Alignment.center,
                child: day.text.size(22).fontFamily(bold2).make()),

            //SearchBar
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
              children: List.generate(
                  coffeetype.length,
                  (index) => "${coffeetype[index]}"
                      .text
                      .fontFamily(bold2)
                      .size(14)
                      .makeCentered()),
            )
                .box
                .margin(EdgeInsets.symmetric(horizontal: 8))
                .padding(EdgeInsets.symmetric(horizontal: 12))
                .rounded
                .shadow
                .make()
          ],
        ),
      ),
    );
  }
}
