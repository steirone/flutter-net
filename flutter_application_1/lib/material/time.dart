// import 'dart:html';

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Post {
  final String title;
  final String body;
  final int userId;

  Post({required this.title, required this.body, required this.userId});

  Map<String, dynamic> toJson() => {
        'title': title,
        'body': body,
        'userId': userId,
      };
}

class DateTimeApp extends StatefulWidget {
  @override
  _DateTimeAppState createState() => _DateTimeAppState();
}

class _DateTimeAppState extends State<DateTimeApp> {
  late String _dateTimeString;
  late int hour;
  late int minute;
  late int second;
  final _formKey = GlobalKey<FormState>();
  final _body1 = TextEditingController();
  final _body2 = TextEditingController();
  final _body3 = TextEditingController();

  @override
  void initState() {
    super.initState();
    _getDateTimeFromNetwork();
    getAnggota();
  }

  Future _getDateTimeFromNetwork() async {
    var url = Uri.parse(
        'https://timeapi.io/api/Time/current/zone?timeZone=Asia/Jakarta');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      Map<String, dynamic> jsonResponse = json.decode(response.body);
      int _hour = jsonResponse['hour'];
      int _minute = jsonResponse['minute'];
      int _second = jsonResponse['seconds'];

      setState(() {
        hour = _hour;
        minute = _minute;
        second = _second;
      });
    } else {
      throw Exception('Failed to load date and time from network');
    }

    return {
      "hours": hour,
      "minutes": minute,
      "seconds": second,
    };
  }

  Future getAnggota() async {
    var url = Uri.parse('http://127.0.0.1:8082/api/anggota/getAll');
    final response = await http.get(url);
    setState(() {
      response;
    });

    return {response};
  }

  Future<http.Response?> makePostRequest(String url, Post post) async {
    try {
      var uri = Uri.parse(url);
      final response = await http.post(
        uri,
        headers: {'Content-Type': 'application/json'},
        body: json.encode(post.toJson()),
      );
      print(response.statusCode);
      return response;
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future<http.Response?> testGet() async {
    try {
      var uri = Uri.parse('http://127.0.0.1:8082/api/datakk/getAll');
      final response = await http.get(uri);
      print(response.statusCode);
      return response;
    } catch (e) {
      print(e);
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Date and Time'),
        ),
        body: PageView(
          children: [
            FutureBuilder(
              future: _getDateTimeFromNetwork(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return Center(
                    child: Text(
                        "${snapshot.data["hours"]} ${snapshot.data["minutes"]} ${snapshot.data["seconds"]}"),
                  );
                }
              },
            ),
            Column(
              children: [
                Container(
                  width: 300,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextFormField(
                          controller: _body1,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: _body2,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: _body3,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16.0),
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                // ScaffoldMessenger.of(context).showSnackBar(
                                //   const SnackBar(
                                //       content: Text('Processing Data')),
                                // );
                                // var post = Post(
                                //     title: _body1.toString(),
                                //     body: _body2.toString(),
                                //     userId: int.parse(_body3.text));
                                // var url =
                                //     'https://jsonplaceholder.typicode.com/posts';
                                // var response = makePostRequest(url, post);
                                testGet();
                              }
                            },
                            child: const Text('Submit'),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              child: FutureBuilder(
                future: getAnggota(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  } else {
                    List<dynamic> decoded = jsonDecode(snapshot.data!);
                    return Center(
                      child: ListView.builder(
                        itemCount: decoded.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: CircleAvatar(
                              backgroundColor:
                                  Color.fromARGB(255, 116, 116, 116),
                              child: Text("${decoded[index]["nama"]}"),
                            ),
                            title: Text("${decoded[index]["nama"]}"),
                          );
                        },
                      ),
                    );
                  }
                },
              ),
            )
          ],
        ));
  }
}
