import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:qcs/select_user.dart';
import 'package:qcs/widgets/formating.dart';

bool user = false;

class Widgets extends StatefulWidget {
  const Widgets({super.key});

  @override
  State<Widgets> createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              sizeBox(40),
              titleCustom('QCS - App'),
              infoTextCustom("components"),
              sizeBox(20),
              TextButton(onPressed: (){
                Get.to(SelectUser());
                
              }, child: textCustom("Select User", const Color.fromARGB(255, 255, 98, 7))),
              sizeBox(40),

// user select card
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

              sizeBox(20),
// ID cards
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  idCardImage("Front side"),
                  idCardImage("Back side"),
                ],
              ),

              sizeBox(20),
// allow location
              Container(
                padding: EdgeInsets.all(20),
                height: 278,
                width: 335,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1, color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(16)),
                child: Column(
                  children: [
                    Icon(
                      Icons.location_on_rounded,
                      color: Color(0xFFF2670A),
                      size: 80,
                    ),
                    sizeBox(10),
                    titleCustom("Allow Location"),
                    sizeBox(10),
                    Text(
                      "Grant location access for\n enhanced features.",
                      textAlign: TextAlign.center,
                    ),
                    sizeBox(10),
                    SizedBox(
                        height: 50,
                        width: 265,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Colors.blue, // Set the background color to blue
                          ),
                          onPressed: () {},
                          child: Text(
                            "Allow Location",
                            style: TextStyle(color: Colors.white),
                          ),
                        ))
                  ],
                ),
              ),

              sizeBox(40),
// Account Recovered
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Icon(
                      Icons.check_circle_rounded,
                      color: Color(0xFFF2670A),
                      size: 70,
                    ),
                    sizeBox(40),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 10,
                      ),
                      width: 335,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade500,
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          sizeBox(5),
                          headingCustom("Account Recovered", Colors.white),
                          sizeBox(5),
                          Text(
                            "Your account has been successfully recovered, you can log in back with a new password",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white),
                          ),
                          sizeBox(5),
                        ],
                      ),
                    ),
                    sizeBox(10),
                  ],
                ),
              ),

              sizeBox(20),
              // recent order
              Container(
                width: 335,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      width: 1, color: Color.fromARGB(108, 87, 84, 83)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    ListTile(
                        title: headingCustom("ORDB1234"),
                        subtitle: Text('Recipient: Wade Warren'),
                        trailing: Chip(
                          label: infoTextCustom('Picked Up', Colors.white),
                          backgroundColor:
                              Color(0xFFF2670A), // Set background color
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(50), // 100% border radius
                          ),
                        )),
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

              sizeBox(20),

              sizeBox(20),
              sizeBox(20),

              Container(
                padding: EdgeInsets.all(5),
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
                        contentPadding: EdgeInsets.all(0),
                        leading: Icon(
                          Icons.person_pin,
                          size: 50,
                          color: Colors.grey.shade400,
                        ),
                        title: headingCustom("Full Name"),
                        trailing: Chip(
                            avatar: Icon(
                              Icons.star, // Choose your desired icon
                              color: Colors.yellow.shade800, // Set icon color
                              size: 15, // Adjust the size as needed
                            ),
                            label: textCustom('5', Colors.yellow.shade800),
                            backgroundColor:
                                Colors.white, // Optional: Set background color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  50), // 100% border radius for pill shape
                              side: BorderSide(
                                color: Colors.yellow.shade600, // Border color
                                width: 1, // Adjust border width as needed
                              ),
                            ))),
                    Text(
                      "Lorem ipsum dolor sit amet consectetur. Ultrices rhoncus id commodo porta. Arcu sed sit sodales diam magna eget.",
                      style: TextStyle(fontSize: 12),
                    ),
                    sizeBox(5),
                    infoTextCustom("3 Weeks ago")
                  ],
                ),
              ),

              // Container(
              //   color: Colors.amber,
              //   width: 390,
              //   height: 10,
              // ),

              sizeBox(40),
            ],
          ),
        ),
      ),
    );
  }
}
/////////////////////////

Widget userSelectionCard(String icon, String label, bool selected) {
  return Container(
    padding: EdgeInsets.all(20),
    height: 150,
    width: 155,
    decoration: BoxDecoration(
        color: selected
            // ignore: deprecated_member_use
            ? Color(0xFFF2670A).withOpacity(0.1)
            // ignore: deprecated_member_use
            : Colors.white.withOpacity(0.5),
        border: Border.all(
            width: 1,
            color: selected
                // ignore: deprecated_member_use
                ? Color(0xFFF2670A).withOpacity(0.2)
                : Colors.grey.shade400),
        borderRadius: BorderRadius.circular(12)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          // ignore: deprecated_member_use
          color: Colors.grey.withOpacity(0.2),
          child: SvgPicture.asset(
            'assets/svg/Customers.svg',
            semanticsLabel: 'App_Name',
            height: 60,
            width: 60,
          ),
        ),
        Text(
          label,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: selected ? Color(0xFFF2670A) : Colors.black54),
        ),
      ],
    ),
  );
}

Widget idCardImage(String label) {
  return Container(
    padding: EdgeInsets.all(8),
    width: 160,
    height: 125,
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(width: 1, color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(12)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style:
                  TextStyle(color: Colors.black38, fontWeight: FontWeight.w500),
            ),
            InkWell(
              child: Icon(
                Icons.cancel,
                color: Colors.black38,
              ),
            )
          ],
        ),
        Container(
          color: Colors.amber,
          height: 75,
          width: 120,
        ),
      ],
    ),
  );
}
