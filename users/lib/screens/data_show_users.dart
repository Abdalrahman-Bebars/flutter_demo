import 'package:users/module/data.dart';
import 'package:users/module/functions.dart';
import 'package:flutter/material.dart';

class users_data extends StatelessWidget {
  Users user;
  users_data(this.user);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //////////////////////////////////////////////////////
      ///////////////////////////////////////////App bar
      appBar: AppBar(
        title: Text("${user.name} Details"),
      ),
      /////////////////////////////////////////////////////////
      ////////////////////////////////body
      body: SizedBox(
        child: Container(
          color: Colors.white70,
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("${user.name}",
                style: TextStyle(fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: (){
                      Url_launcher("tel:${user.phone}");
                    },
                    child: Text("tel: ${user.phone}",style: TextStyle(fontSize: 20),)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: (){
                      Url_launcher("mailto:${user.email}");
                    },
                    child: Text("Email: ${user.email}",style: TextStyle(fontSize: 20),)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: (){
                      Url_launcher("https://${user.website}");
                    },
                    child: Text("web: ${user.website}",style: TextStyle(fontSize: 20),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
