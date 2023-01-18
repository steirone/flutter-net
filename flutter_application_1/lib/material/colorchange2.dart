import 'package:flutter/material.dart';
import 'package:flutter_application_1/material/colorchange.dart';
import 'package:provider/provider.dart';

class ColorChange extends StatefulWidget {
  const ColorChange({super.key});

  @override
  State<ColorChange> createState() => _ColorChangeState();
}

class _ColorChangeState extends State<ColorChange> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ColorState>(
      create: (context) => ColorState(),
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: ColorState().getColor,
          title: Consumer<ColorState>(
            builder: (context, colorstate, child) => Text(
              "State Management",
              style: TextStyle(color: colorstate.getColor),
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Text("gak ganti"),
              SizedBox(
                height: 10,
              ),
              Consumer<ColorState>(
                builder: (context, value, child) => Container(
                  height: 150,
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: value.getColor),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text("Deep Purple"),
                  Consumer<ColorState>(
                    builder: (context, colorstate, child) => Switch(
                        value: colorstate.getIsOrange,
                        onChanged: ((value) {
                          colorstate.setColor = value;
                        })),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
