import 'package:flutter/material.dart';
import 'package:islamiapp/HomeWidgets/ahadeth.dart';
import 'package:islamiapp/HomeWidgets/quran.dart';
import 'package:islamiapp/HomeWidgets/sebha.dart';

import 'HomeWidgets/radio.dart';

class HomeScreen extends StatefulWidget {
   static const String routeName = "home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int currentIndex = 0;
   List<Widget> HomePages = [
     RadioWidget(),
     Sebha(),
     Ahadeth(),
     Quran(),
   ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/default_bg.png",), fit: BoxFit.fill)

      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("إسلامي"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: currentIndex,
          onTap: (index){
            setState(() {
              currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              label: "راديو",
                icon: const ImageIcon(
                  AssetImage("assets/images/icon_radio.png"),
                )
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              label: "سبحة",
              icon: ImageIcon(
                  AssetImage("assets/images/icon_sebha.png"),
                )
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              label: "احاديث",
              icon: ImageIcon(
                  AssetImage("assets/images/icon_hadeth.png"),
                )
            ),
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              label: "قرآن",
              icon: ImageIcon(
                  AssetImage("assets/images/icon_quran.png"),
                )
            ),
          ],
        ),
        body: HomePages[currentIndex],
      ),
    );
  }
}
