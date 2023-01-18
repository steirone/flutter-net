import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageKedua extends StatefulWidget {
  const PageKedua({super.key});

  @override
  State<PageKedua> createState() => _PageKeduaState();
}

class _PageKeduaState extends State<PageKedua> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors
                .white, // set to transparent to override the default background color
            expandedHeight: 80.0,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.all(10.0),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "More",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Row(
                    children: [
                      Icon(Icons.settings),
                    ],
                  )
                ],
              ),
              background: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(178, 255, 216, 99),
                      Colors.white,
                    ],
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                                'asset/images/images/img_propic_default.webp',
                                width: 40),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Your Name Here ...",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("Your Email Here")
                              ],
                            ),
                            Icon(Icons.keyboard_arrow_right),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 150,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(85, 0, 0, 0), width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.check_box_outline_blank,
                                              size: 45),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Your Level In January 2023",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Color.fromARGB(
                                                        117, 0, 0, 0)),
                                              ),
                                              Text(
                                                "Jagoan",
                                                style: TextStyle(
                                                    fontSize: 19,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Icon(Icons.keyboard_arrow_right)
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 7),
                                    child: Text(
                                      "Free Quota Left",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(127, 0, 0, 0)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.44,
                                        child: Row(
                                          children: const [
                                            Icon(
                                              Icons.javascript,
                                              size: 40,
                                            ),
                                            Text(
                                              "3",
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Transfer \n & top-ups",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color.fromARGB(
                                                      117, 0, 0, 0)),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 0.5,
                                        height: 39,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.black,
                                                width: 0.5),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.44,
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.javascript,
                                              size: 40,
                                            ),
                                            Text("0"),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "ATM \n Withdrawals",
                                              style: TextStyle(
                                                  fontSize: 13,
                                                  color: Color.fromARGB(
                                                      117, 0, 0, 0)),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 150,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Color.fromARGB(85, 0, 0, 0), width: 1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Colors.green,
                                      ),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Verify Your Email"),
                                          Text(
                                              "Improve Security by Verifying your Email Address")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 0.2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 0.2),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Color.fromARGB(110, 0, 0, 0),
                                      ),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Create Your JagoID"),
                                          Text(
                                              "As A Replacement To Your Main Pocket")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 0.2,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.black, width: 0.2),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.check_circle,
                                        color: Color.fromARGB(110, 0, 0, 0),
                                      ),
                                      SizedBox(
                                        width: 7,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Submit Your NPWP"),
                                          Text(
                                              "For tax and regulatory purposes"),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              'asset/images/icons/icon-shortcut-action-spend-analysis.svg',
                              width: 28,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Spend Analysis",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: SizedBox(
                            height: 0.2,
                            child: Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 0.2),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.phone_android,
                              size: 28,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Plan Ahead",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: SizedBox(
                            height: 0.2,
                            child: Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 0.2),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.phone_android,
                              size: 28,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Spend Analysis",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: SizedBox(
                            height: 0.2,
                            child: Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 0.2),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.phone_android,
                              size: 28,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Spend Analysis",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: SizedBox(
                            height: 0.2,
                            child: Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 0.2),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.phone_android,
                              size: 28,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Spend Analysis",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40),
                          child: SizedBox(
                            height: 0.2,
                            child: Container(
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 0.2),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
