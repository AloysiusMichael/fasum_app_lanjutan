import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fasum_app/screens/add_post_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fasum_app/screens/sign_in_screen.dart';
import 'package:intl/intl.dart'; // Add this import statement

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SignInScreenState signInScreenState = SignInScreenState();

  Future<bool> signOut(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => SignInScreen()));
      return true;
    } on Exception catch (_) {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            onPressed: () async {
              bool result = await signOut(context);
              if (result) signInScreenState.userCredential.value = '';
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('posts').orderBy('timestamp').snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }

          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              DateTime dateTime = document['timestamp'].toDate();
              String formattedDateTime = DateFormat.yMMMd().add_Hms().format(dateTime);
              String userEmail = document["email"];

              return Card(
                child: ListTile(
                  title: Text(userEmail!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13)),
                  subtitle:  Text(document['text'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 11)),
                  leading: Container(width:50, height: 50,child: Center(child: Image.network(document['image_url'],fit: BoxFit.cover,))),
                  trailing:  Text(formattedDateTime,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10)),

                ),
              );
            }).toList(),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddPostScreen()),
          );
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}