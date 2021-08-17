import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Pushpage(BuildContext context, Widget screen) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}

Url_launcher(String _url) async {
  if (await canLaunch(_url)) {
    await launch(_url);
  }
}
