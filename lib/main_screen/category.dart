import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shop/widgets/fake_search.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FakeSearch(), backgroundColor: Colors.white),
        body: Stack(children: [
          Positioned(
            left:0, bottom: 0, 
            child: Container(
              height: MediaQuery.of(context).size.height * 0.8, 
              width: MediaQuery.of(context).size.width * 0.2, color: Colors.grey.shade300,)
              ),
          Positioned(
          right:0, bottom: 0,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.8, 
            width: MediaQuery.of(context).size.width * 0.8, color: Colors.white,)),
        ]),
    );
  }
}