import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
         Navigator.pop(context); 
        }, icon: Icon(Icons.arrow_back)),
        title: Text('Favorites'),
      ),
    );
  }
}