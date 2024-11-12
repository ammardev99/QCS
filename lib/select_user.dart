import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qcs/customer/customer.dart';
import 'package:qcs/rider/rider.dart';
import 'package:qcs/widgets/widgets.dart';

import 'widgets/formating.dart';

class SelectUser extends StatefulWidget {
  const SelectUser({super.key});

  @override
  State<SelectUser> createState() => _SelectUserState();
}

class _SelectUserState extends State<SelectUser> {
  bool user = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                          sizeBox(100),

            Image.asset(
              'assets/png/app_icon.png',
              height: 110,
            ),
            sizeBox(20),
            titleCustom('QCS - App'),
            infoTextCustom("under development"),
            sizeBox(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                    onTap: () {
                      user = !user;
                      setState(() {});
                    },
                    // ignore: deprecated_member_use
                    borderRadius: BorderRadius.circular(12),
                    // ignore: deprecated_member_use
                    splashColor: Color(0xFFF2670A).withOpacity(0.3),
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    child: userSelectionCard('icon', 'Customer', user)),
                InkWell(
                    onTap: () {
                      user = !user;
                      setState(() {});
                    },
                    // ignore: deprecated_member_use
                    borderRadius: BorderRadius.circular(12),
                    // ignore: deprecated_member_use
                    splashColor: Color(0xFFF2670A).withOpacity(0.3),
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    child: userSelectionCard('icon', 'Rider', !user)),
              ],
            ),
            sizeBox(40),
            SizedBox(
              width: 300,
              height: 48,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Colors.blue, // Set the background color to blue
                  ),
                  onPressed: () {
                    Get.to(user ? CustomerHome() : RiderHome());
                  },
                  child: headingCustom("Continue", Colors.white)),
            ),
            sizeBox(15),
        
            TextButton(onPressed: (){
              Get.to(Widgets());
            }, child: Text('All components')),
            sizeBox(20),
          ],
        ),
      ),
    ));
  }
}
