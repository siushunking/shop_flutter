import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CupertinoSearchTextField(),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Colors.black, ),
          onPressed: () {
            Navigator.pop(context);
          },
          ),
        backgroundColor: Colors.white,
        ),
    );
  }
}