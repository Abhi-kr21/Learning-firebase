import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_demo/add_friend.dart';
import 'package:flutter_firebase_demo/authentication/login.dart';
import 'package:flutter_firebase_demo/authentication/signup.dart';
import 'package:flutter_firebase_demo/favorite.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onLongPress: () {
          showDialog(
            context: context,
             builder: (context) {
           return  AlertDialog(
              title: Text('delete '),
              content: Text('remove this friend'),
              actions: [
                TextButton(onPressed: () {
                  Navigator.pop( context);
                }, child: Text('no')),
                TextButton(onPressed: () {
                  Navigator.pop(context);
                }, child: Text('yes')),
              ],
            );
          },);
        },
        child: StreamBuilder<Object>(
          stream:  FirebaseFirestore.instance.collection('users').snapshots(),
          builder: (context, AsyncSnapshot snapshot) {
            if(snapshot.hasData){
               return ListView.builder(itemBuilder: (context, index) {
      
              return   ListTile(
                title: Text(snapshot.data.docs[index]['name']),
                subtitle: Text(snapshot.data.docs[index]['email']),
                leading: Icon(Icons.person,),
              );
            },
            itemCount: snapshot.data.docs.length,
            );
            }
            else{
              return Center(child: Text("Laoding"),);
            }
           
          }
        ),
      ),
      appBar: AppBar(
        title: Text('homepage'),
        actions: [
          IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Favorite(),));
          }, icon: Icon(Icons.favorite))
        ],
      ),
      
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddFriends(),));
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
        ),
    );
  }
}