import 'package:flutter/material.dart';

class Login_Page extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                )
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                )
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            child: Text('Login '),
            color: Colors.amber,
            onPressed: () {
            
          },)
        ],
      ),
    );
  }
}