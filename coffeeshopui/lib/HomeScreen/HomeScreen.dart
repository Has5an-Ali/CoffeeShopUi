import 'package:coffeeshopui/const/const.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            //
          ],
        ),
      ),
    );
  }
}
