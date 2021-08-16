import 'package:users_prog/module/data.dart';
import 'package:flutter/material.dart';

class Postdetails extends StatelessWidget {
  Post post;
  Postdetails(this.post);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //////////////////////////////////////////////////////
      ///////////////////////////////////////////App bar
      appBar: AppBar(
        title: Text("Posts"),
      ),
      /////////////////////////////////////////////////////////
      ////////////////////////////////body
      body: Card(
        margin: EdgeInsets.all(10.0),
        color: Colors.white70,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "${post.body}",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
