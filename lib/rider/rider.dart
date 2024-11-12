import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qcs/widgets/formating.dart';
import 'package:qcs/widgets/widgets.dart';

class RiderHome extends StatefulWidget {
  const RiderHome({super.key});

  @override
  State<RiderHome> createState() => _RiderHomeState();
}

class _RiderHomeState extends State<RiderHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: headingCustom("Rider"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizeBox(10),

              sizeBox(10),
              // recent accepted order
              Container(
                padding: EdgeInsets.all(0),
                width: 335,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      width: 1, color: Color.fromARGB(108, 87, 84, 83)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                        title: headingCustom("ORDB1234"),
                        subtitle: Text('Recipient: Wade Warren'),
                        trailing: Chip(
                          label: infoTextCustom('Accepted', Colors.white),
                          backgroundColor:
                              Colors.blue.shade800, // Set background color
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(50), // 100% border radius
                          ),
                        )),
                    Row(
                      children: [
                        sizeBox(18),
                        Text(
                          "Ecommerce Delivery (SDD)",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.location_on,
                        color: Colors.blue,
                      ),
                      title: infoTextCustom('Pickup Location'),
                      subtitle: Text(
                        'Circle Station, Official Town Rd, Darkuman...',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.my_location_rounded,
                        color: Color(0xFFF2670A),
                      ),
                      title: infoTextCustom('Drop off Location'),
                      subtitle: Text(
                        'Advantage Hse., Klanna Street, Osu, Accra',
                        style: TextStyle(fontSize: 12),
                      ),
                    ),
                  ],
                ),
              ),

              underDevelopmentTag(),
              sizeBox(40),

                          TextButton(onPressed: (){
              Get.to(Widgets());
            }, child: Text('Back to All Components')),
            sizeBox(20),

            ],
          ),
        ),
      ),
    ));
  }
}
