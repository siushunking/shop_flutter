import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shop/minor_screen/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
    length: 9, 
    child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: InkWell(
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
        ),
            
        bottom: TabBar(
          indicatorColor: Colors.amber,
          indicatorWeight: 5,
          isScrollable: true,
          tabs: [
          RepeatedTab(label: "Men"),
          RepeatedTab(label: "Women"),
          RepeatedTab(label: "Shoes"),
          RepeatedTab(label: "Bags"),
          RepeatedTab(label: "Electronics"),
          RepeatedTab(label: "Accessories"),
          RepeatedTab(label: "Home & Garden"),
          RepeatedTab(label: "Kids"),
          RepeatedTab(label: "Beauty"),
        ]),
      ),
      body: TabBarView(children: [
        Center(child: Text('Men screen'),),
        Center(child: Text('Women screen'),),
        Center(child: Text('Shoes screen'),),
        Center(child: Text('Bags screen'),),
        Center(child: Text('Electronics screen'),),
        Center(child: Text('Accessories screen'),),
        Center(child: Text('Home & Garden screen'),),
        Center(child: Text('Kids screen'),),
        Center(child: Text('Beauty screen'),)   
      ]),
    )
    );   
  }
}

class RepeatedTab extends StatelessWidget {
  final String label;
  RepeatedTab({required this.label});

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Text(label, style: TextStyle(color: Colors.grey.shade600)),
    );
  }
}