import 'package:flutter/material.dart';
import 'package:flutter_application_1/material/belajar-2.dart';
import 'package:flutter_application_1/material/belajar-1.dart';
import 'package:flutter_application_1/material/belajar-3.dart';
import 'package:provider/provider.dart';
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  TextStyle myTextStyle =
      TextStyle(color: Colors.white, fontWeight: FontWeight.w500);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ColorState(),
        ),
        ChangeNotifierProvider(create: (context) => SaldoState()),
        ChangeNotifierProvider(
          create: (context) => KeranjangState(),
        )
      ],
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.grey[900],
            title: Consumer<ColorState>(
              builder: (context, colorstate, child) => Text(
                "State Management",
                style: TextStyle(color: colorstate.getColor),
              ),
            )),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Belanja"),
              SizedBox(
                height: 10,
              ),
              Consumer<ColorState>(
                  builder: (context, colorstate, child) => Consumer<SaldoState>(
                        builder: (context, saldostate, child) => Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: colorstate.getColor),
                          child: Center(
                            child: Text(
                              "${saldostate.getSaldo}",
                              style: myTextStyle,
                            ),
                          ),
                        ),
                      )),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("DeepPurple"),
                  Consumer<ColorState>(
                    builder: (context, colorstate, child) => Switch(
                        value: colorstate.getIsOrange,
                        onChanged: ((value) {
                          colorstate.setColor = value;
                        })),
                  ),
                  Text("DeepOrange")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Consumer<ColorState>(
                  builder: (context, colorstate, child) =>
                      Consumer<KeranjangState>(
                        builder: (context, keranjangstate, child) => Card(
                          color: colorstate.getColor,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "Telur (500) x ${keranjangstate.getQty}",
                                  style: myTextStyle,
                                ),
                                Text(
                                  "${keranjangstate.getQty * 500}",
                                  style: myTextStyle,
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
            ],
          ),
        ),
        floatingActionButton: Consumer3<ColorState, SaldoState, KeranjangState>(
          builder: (context, colorstate, saldostate, keranjangstate, child) =>
              FloatingActionButton(
            backgroundColor: colorstate.getColor,
            onPressed: () {
              if (saldostate.getSaldo > 0) {
                saldostate.kurangiSaldo(500);
                keranjangstate.tambahkeranjang();
              }
            },
            child: Icon(Icons.shopping_cart_outlined),
          ),
        ),
        // floatingActionButton: Consumer<ColorState>(
        //     builder: (context, colorstate, child) => Consumer<SaldoState>(
        //         builder: (context, saldostate, child) =>
        //             Consumer<KeranjangState>(
        //               builder: (context, keranjangstate, child) =>
        //                   FloatingActionButton(
        //                 backgroundColor: colorstate.getColor,
        //                 onPressed: () {
        //                   if (saldostate.getSaldo > 0) {
        //                     saldostate.kurangiSaldo(500);
        //                     keranjangstate.tambahkeranjang();
        //                   }
        //                 },
        //                 child: Icon(Icons.shopping_cart_outlined),
        //               ),
        //             ))),
      ),
    );
  }
}