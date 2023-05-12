import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:money_tracker/models/user_model.dart';

// missing method:
// 1. create default document when user signed up
// 2. updating user data when user editing it's data (not overwriting)
// 3. store log information on how user uses their money and then update
//    the previous money information (current money = current money - used money)

// questions:
// 1. how do we create a log document inside a user document?
class DatabaseService {
  // user id
  final String uid;

  // constructor
  DatabaseService({required this.uid});

  // collection reference
  // (a reference to a particular collection in the database)
  // in MySQL this is what we call table
  final userCollection = FirebaseFirestore.instance.collection('users');

  Future defaultUserData(UserModel user) async {
    // userCollection.doc(uid).set means:
    // we go to the "users" collection in firebase and search
    // for the document with the given id, then set will
    // overwrite the existing data in the document
    // (read the set function documentation for more information)
    return await userCollection.doc(uid).set(user.toJson());
  }

  // get "users" stream
  // BIG QUESTION MARK
  // HOW TO FETCH DATA FROM THE FIRESTORE
  Future<Map<String, dynamic>> getDocument() {
    var data;

    try {
      userCollection.doc(uid).get().then((DocumentSnapshot ds) {
        if (ds.exists)
          data = ds.data();
        else
          data = UserModel().toJson();
      });
    } catch (e) {
      print(e.toString());
    }

    return data;
  }
}
