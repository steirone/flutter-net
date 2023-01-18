import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PageKesatu extends StatefulWidget {
  const PageKesatu({super.key});

  @override
  State<PageKesatu> createState() => _PageKesatuState();
}

class _PageKesatuState extends State<PageKesatu> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        pinned: true,
        backgroundColor: Colors.white,
        expandedHeight: 80.0,
        flexibleSpace: FlexibleSpaceBar(
          titlePadding: EdgeInsets.all(10.0),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'asset/images/jago.svg',
                width: 80,
              ),
              Row(
                children: [
                  Icon(Icons.account_circle),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.notifications),
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
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          color: Color.fromARGB(255, 218, 212, 212),
                          child: const TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              border: InputBorder.none,
                              hintText: 'Search contacts & bill',
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: Text(
                          "Spotlight",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox(
                                width: 280,
                                height: 150,
                                child: Container(
                                  color: Colors.amber,
                                  child: Text("1"),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox(
                                width: 280,
                                height: 150,
                                child: Container(
                                  color: Colors.amber,
                                  child: Text("2"),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: SizedBox(
                                width: 280,
                                height: 150,
                                child: Container(
                                  color: Colors.amber,
                                  child: Text("3"),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Plan Ahead",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "Hide",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                decorationColor: Colors.yellow,
                                decoration: TextDecoration.underline,
                                decorationThickness: 1.5,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 130,
                        // width: MediaQuery.of(context).size.width,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color.fromARGB(47, 63, 63, 63),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Icon(
                                  Icons.newspaper,
                                  size: 80,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      "Never Forget to Pay Your Bills",
                                      style: TextStyle(fontSize: 15),
                                      overflow: TextOverflow.fade,
                                    ),
                                    Text(
                                      "Create a Payment Bill",
                                      style: TextStyle(
                                        overflow: TextOverflow.fade,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        decorationColor: Colors.yellow,
                                        decoration: TextDecoration.underline,
                                        decorationThickness: 1.5,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Shorcuts",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "Edit",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                decorationColor: Colors.yellow,
                                decoration: TextDecoration.underline,
                                decorationThickness: 1.5,
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(75, 180, 178, 178),
                                      blurRadius: 40,
                                      spreadRadius: 0.1,
                                      offset: Offset(0, 1)),
                                ],
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset(
                                          'asset/images/icons/avatar-th-payment-with-bibit-2.svg',
                                          width: 30),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Investment",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17),
                                      ),
                                      Text(
                                        "Tap to Link",
                                        style: TextStyle(
                                            fontSize: 13,
                                            color:
                                                Color.fromARGB(117, 0, 0, 0)),
                                      )
                                    ],
                                  ),
                                  const Text(
                                    "NEW!",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(75, 180, 178, 178),
                                      blurRadius: 40,
                                      spreadRadius: 0.1,
                                      offset: Offset(0, 1)),
                                ],
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Icon(
                                  //   Icons.monetization_on,
                                  //   size: 30,
                                  // ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    child: FlareActor(
                                      'asset/images/animations/transfer_success.flr',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Main Pocket",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Rp2.000",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color.fromARGB(117, 0, 0, 0)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(75, 180, 178, 178),
                                      blurRadius: 40,
                                      spreadRadius: 0.1,
                                      offset: Offset(0, 1))
                                ],
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Icon(
                                    Icons.money,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Text(
                                    "Pay & Send",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(75, 180, 178, 178),
                                      blurRadius: 40,
                                      spreadRadius: 0.1,
                                      offset: Offset(0, 1))
                                ],
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Icon(
                                    Icons.money,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Text(
                                    "Request Money",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(75, 180, 178, 178),
                                      blurRadius: 40,
                                      spreadRadius: 0.1,
                                      offset: Offset(0, 1))
                                ],
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Icon(
                                    Icons.money,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Text(
                                    "My Balance",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Rp2.000",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color.fromARGB(117, 0, 0, 0)),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(75, 180, 178, 178),
                                      blurRadius: 40,
                                      spreadRadius: 0.1,
                                      offset: Offset(0, 1))
                                ],
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Icon(
                                    Icons.document_scanner,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    height: 14,
                                  ),
                                  Text(
                                    "Pay Bills",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(75, 180, 178, 178),
                                      blurRadius: 40,
                                      spreadRadius: 0.1,
                                      offset: Offset(0, 1))
                                ],
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Icon(
                                    Icons.handshake,
                                    size: 30,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "JagoRameRame",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Refer a friend for Incentive ..",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color.fromARGB(117, 0, 0, 0)),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.45,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(96, 255, 235, 59),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(75, 180, 178, 178),
                                      blurRadius: 40,
                                      spreadRadius: 0.1,
                                      offset: Offset(0, 1))
                                ],
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add_circle,
                                  color: Colors.amber,
                                  size: 36,
                                ),
                                Text("Add Shorcut")
                              ],
                            ),
                          ),
                        ],
                      )
                    ]),
              );
            }
          },
          childCount: 20,
        ),
      ),
    ]);
  }
}
