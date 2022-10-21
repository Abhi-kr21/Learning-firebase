import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_demo/Model/friends_model.dart';

class AddFriends extends StatelessWidget {

  TextEditingController namecontroller= TextEditingController();
  TextEditingController emailcontroller= TextEditingController();
  TextEditingController phonecontroller= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('add friends'),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(25),
          child: TextFormField(
            controller: namecontroller,
            decoration: const InputDecoration(
                        hintText: 'Name...',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 250,color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25),
          child: TextFormField(
            controller: emailcontroller,
            decoration: const InputDecoration(
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 250,color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(25),
          child: TextFormField(
            controller: phonecontroller,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
                        hintText: 'Mobile number',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 250,color: Colors.blue),
                          borderRadius: BorderRadius.all(Radius.circular(25)),
          ),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
       // Radio(value: value, groupValue: groupValue, onChanged: onChanged),
        MaterialButton(
          color: Colors.blue,
          child: Center(child: Text('Add friend')), 
          onPressed: () {
            Friend newFriend = Friend(name: namecontroller.text, email:emailcontroller.text , phone: phonecontroller.text);
            Map<String,dynamic> data = newFriend.toJson();
        // FirebaseFirestore.instance.collection('users').doc().set(data);   // 1st way to uplod dat to firestore
         FirebaseFirestore.instance.collection('users').add(data); 
         Navigator.pop(context);
        },
        
        )
      ]),
    );
  }
}