import 'package:users_prog/module/data.dart';
import 'package:dio/dio.dart';

class PostService {
  String BaseURL = "https://jsonplaceholder.typicode.com/";
  String Posts = "posts";

  Future<List<Post>> Getposts() async {
    List<Post> postlist = [];
    Response response = await Dio().get("$BaseURL$Posts");
    var data = response.data;
    data.forEach((item) {
      postlist.add(Post.fromJson(item));
    });
    return postlist;
  }
}

class UserService {
  String BaseURL = "https://jsonplaceholder.typicode.com/";
  String users = "users";

  Future<List<Users>> Getusers() async {
    List<Users> userlist = [];
    Response response = await Dio().get("$BaseURL$users");
    var data = response.data;
    data.forEach((item) {
      userlist.add(Users.fromJson(item));
    });
    return userlist;
  }

}
