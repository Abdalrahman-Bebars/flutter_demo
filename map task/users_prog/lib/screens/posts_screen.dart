import 'package:users_prog/module/data.dart';
import 'package:users_prog/module/functions.dart';
import 'package:flutter/material.dart';
import 'data_show_posts.dart';

class Posts_screen extends StatefulWidget {
  List<Post> postslist = [];
  Posts_screen(this.postslist);
  @override
  _Posts_screenState createState() => _Posts_screenState();
}

class _Posts_screenState extends State<Posts_screen> {
  /* List<Post> postslist = [];

  GetPostList() async {
    postslist = await PostService().Getposts();
    load = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    GetPostList();
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //////////////////////////////////////////////////////
      ///////////////////////////////////////////App bar
      appBar: AppBar(
        title: Text("Posts addresses"),
      ),
      ////////////////////////////////////////////////////////
      ////////////////////////////////////body
      body: ListView.builder(
        itemCount: widget.postslist.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          Postdetails(widget.postslist[index])),
                );
              },
              /* () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Postdetails(postslist[index])),
                      );
                    },*/
              child: Card(
                color: Colors.white70,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${widget.postslist[index].title}",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
