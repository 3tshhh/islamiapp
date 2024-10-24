import 'package:flutter/material.dart';

class HadethPage extends StatelessWidget {
  static String routeName = "hadeth";
  const HadethPage({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/default_bg.png",), fit: BoxFit.fill)

      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("إسلامي"),
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(25)
            ),
            margin: EdgeInsets.only(bottom: height*0.07),
            padding: EdgeInsets.symmetric(vertical: height*0.05,horizontal: width*0.08),
            height: height*0.75,
            width: width*0.85,
            child:Column(
              children: [
                Text("data",style: Theme.of(context).textTheme.bodyLarge,),
                Divider(),
                Text("data")
              ],
            ) ,
          ),
        ),
      ),
    );
  }
}
