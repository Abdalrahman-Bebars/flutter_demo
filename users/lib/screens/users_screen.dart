import 'package:users/module/data.dart';
import 'package:users/module/functions.dart';
import 'package:users/screens/data_show_users.dart';
import 'package:flutter/material.dart';

class Users_screen extends StatefulWidget {
  List<Users> userslist = [];
  Users_screen(this.userslist);
  @override
  _Users_screenState createState() => _Users_screenState();
}

class _Users_screenState extends State<Users_screen> {
/*bool load = true;
  GetUserList() async {
    userslist = await UserService().Getusers();
    load = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    GetUserList();
  }*/
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //////////////////////////////////////////////////////
      ///////////////////////////////////////////App bar
      appBar: AppBar(
        title: Text("Users"),
      ),
      ////////////////////////////////////////////////////////
      ////////////////////////////////////body
      body: ListView.builder(
        itemCount: widget.userslist.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(5.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          users_data(widget.userslist[index])),
                );
              },
              child: Card(
                color: Colors.white70,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "${widget.userslist[index].name}",
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
