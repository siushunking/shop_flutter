import 'package:flutter/material.dart';
import 'package:shop/minor_screen/search.dart';

class FakeSearch extends StatelessWidget {
  const FakeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => SearchScreen()));
          },
          child: Container(
          height: 35,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.amber, width: 1.4),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Icon(Icons.search, color: Colors.grey,),
            Text("What's are you looking for?", style: TextStyle(fontSize: 16, color: Colors.grey),),
            Container(
              decoration: BoxDecoration(color: Colors.amber, borderRadius: BorderRadius.circular(25), border: Border.all(color: Colors.amber, width: 1.4),), 
              height: 32,
              width: 75,
              child: Center(child: Text("Search", style: TextStyle(fontSize: 16, color: Colors.grey))),
              )
          ],),
        ),
        );
  }
}