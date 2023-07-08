import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:smart_home_ui/Views/homescreen.dart';
import 'package:smart_home_ui/Views/temperature_screen.dart';
import 'package:velocity_x/velocity_x.dart';

class DevicesScreen1 extends StatefulWidget {
  final bool powerOn;
  const DevicesScreen1({super.key, required this.powerOn});

  @override
  State<DevicesScreen1> createState() => _DevicesScreen1State();
}

class _DevicesScreen1State extends State<DevicesScreen1> {
  bool powerOn = false;
  void powerSwitchChanged(bool value) {
    setState(() {
      value = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.to(const HomeScreen());
          },
          icon: Padding(
            padding: const EdgeInsets.only(top: 15, left: 15),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10,
              top: 15,
            ),
            // child: Padding(
            //   padding: const EdgeInsets.all(20.0),
            child: IconButton(
                onPressed: () {
                  Get.to(() => const TemperatureScreen());
                },
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                  size: 30,
                )),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        "Devices".text.bold.size(25).make(),
                        Padding(
                          padding: const EdgeInsets.only(right: 18),
                          child: "Connected".text.color(Vx.gray600).make(),
                        ),
                      ],
                    ),
                  ),
                  10.heightBox,
                  Padding(
                    padding: const EdgeInsets.only(left: 165),
                    child: Container(
                      child: Row(
                        children: [
                          "On".text.bold.size(20).make(),
                          5.widthBox,
                          Icon(Icons.circle),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Image.asset(
                              "assets/smart-tv.png",
                              height: 40,
                              color: Vx.white,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 12),
                          child: "2".text.size(20).color(Vx.white).bold.make(),
                        )
                      ],
                    ),
                  ).box.rounded.color(Vx.black).make(),
                  30.widthBox,
                  Column(
                    children: [
                      "Connected".text.make(),
                      "Smart TV".text.bold.make(),
                    ],
                  ),
                  60.widthBox,
                  Switch(value: true, onChanged: (value) {}),
                  // Container(
                  //   child: Padding(
                  //     padding: const EdgeInsets.only(top: 60, right: 45),
                  //     child: Row(
                  //       children: [
                  //         SizedBox(
                  //           width: 60,
                  //           height: 60,
                  //           child: FittedBox(
                  //               child: FloatingActionButton.extended(
                  //             onPressed: () {},
                  //             label: "Bedroom".text.bold.make(),
                  //           )),
                  //         ),
                  //         10.widthBox,
                  //         SizedBox(
                  //           width: 60,
                  //           height: 60,
                  //           child: FittedBox(
                  //               child: FloatingActionButton.extended(
                  //             onPressed: () {},
                  //             label: "Bedroom".text.bold.make(),
                  //           )),
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: context.screenHeight - 50,
                color: Vx.gray300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Image.asset(
                              "assets/air-conditioner.png",
                              height: 40,
                              color: Vx.black,
                            ),
                          ),
                        ),
                        // Container(
                        //   padding: EdgeInsets.only(bottom: 12),
                        //   child:
                        //       "2".text.size(20).color(Vx.white).bold.make(),
                        // )
                      ],
                    ),
                  ).box.rounded.color(powerOn ? Vx.black : Vx.white).make(),
                  20.widthBox,
                  Column(
                    children: [
                      "Not connected".text.make(),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: "Smart AC".text.bold.make(),
                      ),
                    ],
                  ),
                  45.widthBox,
                  Switch(
                    value: powerOn,
                    onChanged: (value) => powerSwitchChanged(value),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: context.screenHeight - 50,
                color: Vx.gray300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Image.asset(
                              "assets/fan.png",
                              height: 40,
                              color: Vx.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ).box.rounded.color(Vx.white).make(),
                  20.widthBox,
                  Column(
                    children: [
                      "Not connected".text.make(),
                      Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: "Smart Fan".text.bold.make(),
                      ),
                    ],
                  ),
                  45.widthBox,
                  Switch(value: false, onChanged: (value) {}),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Container(
                height: 1.0,
                width: context.screenHeight - 50,
                color: Vx.gray300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Container(
                    child: Column(
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Image.asset(
                              "assets/light-bulb.png",
                              height: 40,
                              color: Vx.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ).box.rounded.color(Vx.white).make(),
                  20.widthBox,
                  Column(
                    children: [
                      "Not connected".text.make(),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: "Smart Light".text.bold.make(),
                      ),
                    ],
                  ),
                  45.widthBox,
                  Switch(value: false, onChanged: (value) {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
