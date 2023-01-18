import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:email_validator/email_validator.dart';

final add1 = TextEditingController();
final add2 = TextEditingController();
final add3 = TextEditingController();
final add4 = TextEditingController();

// < ---- Key Validasi Input ----- >
final _formKey = GlobalKey<FormState>();

class Module16App extends StatefulWidget {
  const Module16App({super.key});

  @override
  State<Module16App> createState() => _Module16AppState();
}

class _Module16AppState extends State<Module16App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF764abc),
          title: Text("Get Data From Api"),
        ),
        body: Container(child: UsingTheData()),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Color(0xFF764abc),
          onPressed: () {
            add1.clear();
            add2.clear();
            add3.clear();
            add4.clear();
            // postData({"name": "post method", "email": "testpost@gmail.com"});
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Center(
                  child: Text("input Data"),
                ),
                content: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      TextFormField(
                        controller: add1,
                        autofocus: true,
                        decoration:
                            InputDecoration(hintText: "Input your name"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: add2,
                        autofocus: true,
                        decoration:
                            InputDecoration(hintText: "Input your email"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some email';
                          }
                          //  else if (!EmailValidator.validate(value)) {
                          //   return 'Please enter a valid email';
                          // }
                          return null;
                        },
                      ),
                      TextFormField(
                        controller: add3,
                        autofocus: true,
                        decoration:
                            InputDecoration(hintText: "Input your gender"),
                        // validator: (value) {
                        //   if (value == null || value.isEmpty) {
                        //     return 'Please enter some email';
                        //   } else if (!EmailValidator.validate(value)) {
                        //     return 'Please enter a valid email';
                        //   }
                        //   return null;
                        // },
                      ),
                      TextFormField(
                        controller: add4,
                        autofocus: true,
                        decoration:
                            InputDecoration(hintText: "Input your nonik"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some email';
                          }
                          //  else if (!EmailValidator.validate(value)) {
                          //   return 'Please enter a valid email';
                          // }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                actions: [
                  IconButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        postData(
                          {
                            "nama": add1.text,
                            "agama": add2.text,
                            "kelamin": add3.text,
                            "nonik": add4.text
                          },
                        );
                        Navigator.of(context).pop();
                      }
                    },
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class PrintResponseBody extends StatelessWidget {
  const PrintResponseBody({super.key});

  @override
  Widget build(BuildContext context) {
    Future<http.Response> getData() async {
      final response =
          await http.get(Uri.parse("http://127.0.0.1:8082/api/anggota/getAll"));
      // await http.get(Uri.parse("https://reqres.in/api/users?per_page=15"));
      // await Future.delayed(const Duration(seconds: 2));
      return response;
    }

    return FutureBuilder<http.Response>(
      future: getData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Text(snapshot.data!.body);
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }
        return Center(child: const CircularProgressIndicator());
      },
    );
  }
}

class UsingTheData extends StatefulWidget {
  UsingTheData({super.key});

  @override
  State<UsingTheData> createState() => _UsingTheDataState();
}

class _UsingTheDataState extends State<UsingTheData> {
  Future<http.Response> getData() async {
    final response =
        await http.get(Uri.parse("http://127.0.0.1:8082/api/anggota/getAll"));
    setState(() {
      response;
    });
    return response;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getData().then((value) => value.body),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<dynamic> json = jsonDecode(snapshot.data!);
            // List<dynamic> json = jsonDecode(snapshot.data!)["data"];
            return ListView.builder(
              itemCount: json.length,
              itemBuilder: (context, index) {
                return ListTile(
                    // leading: CircleAvatar(
                    //   backgroundColor: Color(0xFF764abc),
                    //   child: Text("${json[index]["nama"][0]}"),
                    // ),
                    title: Text("${json[index]["nama"]}"),
                    subtitle: Text("${json[index]["agama"]}"),
                    onTap: () {
                      print("nama: ${json[index]["nama"]}");
                      print("agama: ${json[index]["agama"]}");
                    },
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            add1.text = json[index]["nama"];
                            add2.text = json[index]["agama"];
                            add3.text = json[index]["kelamin"];
                            add4.text = json[index]["nonik"].toString();
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Center(
                                  child: Text("Input Data"),
                                ),
                                content: Form(
                                  key: _formKey,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      TextFormField(
                                        controller: add1,
                                        autofocus: true,
                                        decoration: InputDecoration(
                                            hintText: "Input your name"),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter some text';
                                          }
                                          return null;
                                        },
                                      ),
                                      TextFormField(
                                        controller: add2,
                                        autofocus: true,
                                        decoration: InputDecoration(
                                            hintText: "Input your email"),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter some email';
                                          }
                                          //  else if (!EmailValidator.validate(value)) {
                                          //   return 'Please enter a valid email';
                                          // }
                                          return null;
                                        },
                                      ),
                                      TextFormField(
                                        controller: add3,
                                        autofocus: true,
                                        decoration: InputDecoration(
                                            hintText: "Input your gender"),
                                        // validator: (value) {
                                        //   if (value == null || value.isEmpty) {
                                        //     return 'Please enter some email';
                                        //   } else if (!EmailValidator.validate(value)) {
                                        //     return 'Please enter a valid email';
                                        //   }
                                        //   return null;
                                        // },
                                      ),
                                      TextFormField(
                                        controller: add4,
                                        autofocus: true,
                                        decoration: InputDecoration(
                                            hintText: "Input your nonik"),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter some email';
                                          }
                                          //  else if (!EmailValidator.validate(value)) {
                                          //   return 'Please enter a valid email';
                                          // }
                                          return null;
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                actions: [
                                  IconButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        updateData(
                                          json[index]["id"],
                                          {
                                            "nama": add1.text,
                                            "agama": add2.text,
                                            "kelamin": add3.text,
                                            "nonik": add4.text
                                          },
                                        );

                                        Navigator.of(context).pop();
                                      }
                                    },
                                    icon: Icon(Icons.add),
                                  ),
                                ],
                              ),
                            );
                          },
                          icon: Icon(Icons.add_circle_outline_rounded),
                        ),
                        IconButton(
                          onPressed: () {
                            deleteData(json[index]["id"]);
                          },
                          icon: Icon(Icons.remove_circle_outline),
                        )
                      ],
                    ));
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return Center(child: const CircularProgressIndicator());
        });
  }
}

Future<http.Response> postData(Map<String, String> data) async {
  // data object example
  // data = {"name": "post method", "email": "postmethod@test.con"};
  final response =
      await http.post(Uri.parse("http://127.0.0.1:8082/api/anggota/insert"),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(data));
  print(response.statusCode);
  print(response.body);
  return response;
}

Future<http.Response> updateData(int id, Map<String, String> data) async {
  // data object example
  // data = {"name": "post method", "email": "postmethod@test.con"};
  final response = await http.put(
      Uri.parse("http://127.0.0.1:8082/api/anggota/update/${id}"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data));
  print(response.statusCode);
  print(response.body);
  return response;
}

Future<http.Response> deleteData(id) async {
  // data object example
  // data = {"name": "post method", "email": "postmethod@test.con"};
  final response = await http.delete(
    Uri.parse("http://127.0.0.1:8082/api/anggota/delete/${id}"),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
  );
  print(response.statusCode);
  print(response.body);
  return response;
}
