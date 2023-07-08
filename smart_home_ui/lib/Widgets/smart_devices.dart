import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SmartDevices extends StatelessWidget {
  final String iconPath;
  final String deviceName;
  final bool powerOn;
  void Function(bool)? onChanged;

  SmartDevices(
      {super.key,
      required this.iconPath,
      required this.deviceName,
      required this.powerOn,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 80, top: 15),
                child: Image.asset(
                  iconPath,
                  height: 50,
                  color: powerOn ? Vx.white : Vx.black,
                ),
              ),
              15.heightBox,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, bottom: 12),
                      child: Text(
                        deviceName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: powerOn ? Vx.white : Vx.black),
                      ),
                    )),
                    Transform.rotate(
                      angle: pi / 2,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 12),
                        child: Switch(
                          value: powerOn,
                          onChanged: onChanged,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ).box.roundedLg.color(powerOn ? Vx.black : Vx.gray200).make());
  }
}
