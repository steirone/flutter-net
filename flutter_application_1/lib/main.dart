import 'package:flutter/material.dart';
import 'package:flutter_application_1/TugasClone/MainPage.dart';

import 'package:flutter_application_1/material/BodyKe2.dart';
import 'package:flutter_application_1/material/BodyKe3.dart';
import 'package:flutter_application_1/material/belajar.dart';
import 'package:flutter_application_1/material/colorchange2.dart';
import 'package:flutter_application_1/material/test.dart';
import 'package:flutter_application_1/material/time.dart';
import 'package:flutter_application_1/network/hehEree.dart';

void main() {
  runApp(
    MaterialApp(
      home: Module16App(),
      debugShowCheckedModeBanner: false,
    ),
    // Module16App()
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class item {
  String itemName;
  int itemQty;
  item({required String this.itemName, required int this.itemQty});
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  List<item> dataItems = [];

  List<IconData> iconz = [
    Icons.abc,
    Icons.brush,
    Icons.add_a_photo,
  ];

  bool validasi1 = false;
  bool validasi2 = false;

  // ini contrroller
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _textController = TextEditingController();
  final TextEditingController _textController1 = TextEditingController();
  final TextEditingController _textController2 = TextEditingController();
  final TextEditingController _textController3 = TextEditingController();
  final PageController _pageController = PageController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
      // _pageController = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My first APP",
      theme: ThemeData(primarySwatch: Colors.amber),
      darkTheme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("firstapp"),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
            IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: DataSearch(context));
                },
                icon: const Icon(Icons.search))
          ],
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
          children: [
            // bodyKe3(),
            ListView.builder(
                itemCount: dataItems.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                        "${dataItems[index].itemName} x${dataItems[index].itemQty}"),
                    leading: CircleAvatar(
                      child: Icon(Icons.abc),
                      backgroundColor: (dataItems[index].itemQty != 0)
                          ? Colors.amber
                          : Colors.grey,
                    ),
                    onTap: (dataItems[index].itemQty != 0)
                        ? () {
                            setState(() {
                              dataItems[index].itemQty =
                                  dataItems[index].itemQty - 1;
                            });
                          }
                        : null,
                    trailing:
                        Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
                      IconButton(
                          onPressed: () {
                            setState(() {
                              dataItems.removeAt(index);
                            });
                          },
                          icon: Icon(Icons.delete)),
                      IconButton(
                          onPressed: () {
                            String test = dataItems[index].itemQty.toString();
                            _textController2.text = dataItems[index].itemName;
                            _textController3.text = test;
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: Text('Update Items'),
                                  content: SingleChildScrollView(
                                    child: Form(
                                      key: _formKey,
                                      child: Column(
                                        children: <Widget>[
                                          TextFormField(
                                            controller: _textController2,
                                            decoration: InputDecoration(
                                              hintText: 'Enter some Item Name',
                                            ),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Please enter some text';
                                              }
                                              return null;
                                            },
                                          ),
                                          TextFormField(
                                            controller: _textController3,
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                              hintText: 'Enter some Quantity',
                                            ),
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty) {
                                                return 'Please enter some number';
                                              } else if (int.parse(value)
                                                  .isNaN) {
                                                return 'Please enter some number';
                                              }
                                              return null;
                                            },
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(13.0),
                                            child: ElevatedButton(
                                              child: Text('Submit'),
                                              onPressed: () {
                                                if (_formKey.currentState!
                                                    .validate()) {
                                                  setState(() {
                                                    int halah = int.parse(
                                                        _textController3.text);
                                                    dataItems[index].itemName =
                                                        _textController2.text;
                                                    dataItems[index].itemQty =
                                                        halah;
                                                  });
                                                  Navigator.of(context).pop();
                                                }
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          icon: Icon(Icons.edit))
                    ]),
                  );
                }),
            bodyKe2(),
            bodyKe3(),

            // Image(
            //   image:
            //       AssetImage('asset/images/wallpaperflare.com_wallpaper.jpg'),
            //   fit: BoxFit.fill,
            // ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Add Items'),
                  content: SingleChildScrollView(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            controller: _textController,
                            decoration: InputDecoration(
                              hintText: 'Enter some Item Name',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                          ),
                          TextFormField(
                            controller: _textController1,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: 'Enter some Quantity',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some number';
                              }
                              return null;
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: ElevatedButton(
                              child: Text('Submit'),
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  setState(() {
                                    int hai = int.parse(_textController1.text);
                                    dataItems.add(item(
                                        itemName: _textController.text,
                                        itemQty: hai));
                                  });
                                  _textController.clear();
                                  _textController1.clear();
                                  Navigator.of(context).pop();
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Text("asdasdasd"),
                decoration:
                    BoxDecoration(color: Theme.of(context).primaryColorLight),
              ),
              ListTile(
                onTap: () {
                  print("Ini Menu 1");
                },
                leading: Icon(Icons.abc),
                title: Text("Menu 1"),
                trailing:
                    IconButton(onPressed: () {}, icon: Icon(Icons.access_time)),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          fixedColor: Colors.green,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: "Search",
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: "Profile",
              icon: Icon(Icons.account_circle),
            ),
          ],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final BuildContext parentContext;

  DataSearch(this.parentContext);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        Navigator.pop(context);
        Navigator.pop(parentContext);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    return Text("dada");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    return Container();
  }
}
