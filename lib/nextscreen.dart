import 'package:flutter/material.dart';
import 'package:transferabledata_menu/main.dart';

class nextscreen extends StatelessWidget {
  nextscreen({required this.name});
  final String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Next page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
          child: Text('You have entered $name'),
        ),
      ),
    );
  }
}
