import 'package:flutter/material.dart';
import 'package:islamiapp/Pages/hadethPage.dart';

class Ahadeth extends StatelessWidget {
  const Ahadeth({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/hadeth_logo.png"),
        const Divider(),
        Text("الأحاديث", style: Theme.of(context).textTheme.titleMedium,),
        const Divider(),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context,index)=>InkWell(
              onTap: ()=>Navigator.of(context).pushNamed(HadethPage.routeName,),
                child: Center(child: Text("الحديث رقم ${index+1}",style: Theme.of(context).textTheme.titleLarge,))),
            separatorBuilder: (context,index)=>const SizedBox(height: 30,),
            itemCount: 20,
          ),
        ),

      ],
    );
  }
}
