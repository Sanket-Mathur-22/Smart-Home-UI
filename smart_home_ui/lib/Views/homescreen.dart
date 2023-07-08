import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_home_ui/Views/devices_screen1.dart';
import 'package:smart_home_ui/Widgets/smart_devices.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List smartDevices = [
    ["Smart Light", "assets/light-bulb.png", true],
    ["Smart AC", "assets/air-conditioner.png", true],
    ["Smart TV", "assets/smart-tv.png", true],
    ["Smart Fan", "assets/fan.png", true],
  ];

  void powerSwitchChanged(bool value, int index) {
    setState(() {
      smartDevices[index][2] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(DevicesScreen1(
                        powerOn: true,
                      ));
                    },
                    child: Image.asset(
                      "assets/more.png",
                      scale: 8,
                      height: 39,
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://pbs.twimg.com/profile_images/1457288192676151300/jJ30l-Oh_400x400.jpg"),
                  )
                ],
              ),
            ),
            10.heightBox,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: EdgeInsets.only(right: 16),
                          child: "Welcome Home"
                              .text
                              .size(18)
                              .semiBold
                              .color(Colors.grey)
                              .make(),
                        ),
                        "Garret Reynolds".text.size(20).bold.make(),
                      ],
                    ),
                  ),
                  40.widthBox,
                  Image.asset(
                    "assets/house.jpg",
                    height: 120,
                  )
                ],
              ),
            ),
            10.heightBox,
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Smart Devices',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: smartDevices.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 1 / 1.3),
                itemBuilder: (context, index) {
                  return SmartDevices(
                    iconPath: smartDevices[index][1],
                    deviceName: smartDevices[index][0],
                    powerOn: smartDevices[index][2],
                    onChanged: (value) => powerSwitchChanged(value, index),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
