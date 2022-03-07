import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'dart:convert';
import 'lib/model/ip.dart';

void main() async {
  print('Hello, World!');
  var response = await getIPInfo();
  // print(response);
  Map<String, dynamic> ipMap = json.decode(response);
  var ip = new IP.fromJson(ipMap);
  print(ipString(ip.ip));
  print(ip.city);
}

Future<String> getIPInfo() async {
  var url = Uri.parse('https://ipinfo.io/json');
  final client = RetryClient(http.Client());
  var response = await client.get(url);
  return response.body;
}

String ipString(String? ip) {
  if (ip == null) {
    return 'Unknown';
  }
  return ip + " - ip";
}
