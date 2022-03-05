import 'package:http/http.dart' as http;
import 'dart:convert';
import 'lib/model/ip.dart';

void main() async {
  print('Hello, World!');
  var url = Uri.parse('https://ipinfo.io/json');
  var response = await http.get(url);
  // print(response.body);
  Map<String, dynamic> ipMap = json.decode(response.body);
  var ip = new IP.fromJson(ipMap);
  print(ip.ip);
  print(ip.org);
}

Function getIPInfo() {
  return () async {
    var url = Uri.parse('https://ipinfo.io/json');
    var response = await http.get(url);
    return response.body;
  };
}
