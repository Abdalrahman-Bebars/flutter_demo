import 'package:users_prog/module/data.dart';
import 'package:users_prog/module/functions.dart';
import 'package:flutter/material.dart';
import 'package:users_prog/screens/map_page.dart';

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
      body: Column(
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
      floatingActionButton:FloatingActionButton(
      onPressed: (){
          Pushpage(context, MapSample(user.address.geo));
        },
        child: Icon(Icons.gps_fixed),
      ),
    );
  }
}
