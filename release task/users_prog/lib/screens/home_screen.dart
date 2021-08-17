import 'package:users_prog/module/data.dart';
import 'package:users_prog/module/functions.dart';
import 'package:users_prog/screens/posts_screen.dart';
import 'package:users_prog/screens/users_screen.dart';
import 'package:flutter/material.dart';
import 'package:users_prog/services/service.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool load = true;
  List<Users> userslist = [];
  List<Post> postslist = [];

  GetData() async {
    userslist = await UserService().Getusers();
    postslist = await PostService().Getposts();
    load = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    GetData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //////////////////////////////////////////////////////
        ///////////////////////////////////////////App bar
        appBar: AppBar(
          title: Text("Home Page"),
        ),
        ////////////////////////////////////////////////////////
        ////////////////////////////////////body
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  onPressed: () {
                    /*Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Users_screen(userslist)),
                    );*/
                    Pushpage(context, Users_screen(userslist));
                  },
                  child: Text(
                    "Users",
                    style: TextStyle(fontSize: 30),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  onPressed: () {
                    /* Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Posts_screen(postslist)),
                    );*/
                    Pushpage(context, Posts_screen(postslist));
                  },
                  child: Text(
                    "Posts",
                    style: TextStyle(fontSize: 30),
                  )),
            ),
          ],
        )));
  }
}
