import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/formating.dart';

class CustomerHome extends StatefulWidget {
  const CustomerHome({super.key});

  @override
  State<CustomerHome> createState() => _CustomerHomeState();
}

class _CustomerHomeState extends State<CustomerHome> {
  int _selectedIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      print(_selectedIndex);
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.white,),
        backgroundColor: Colors.blue.shade700,
        title: headingCustom("Customer", Colors.white),
      ),
      body: _selectedIndex !=0? underDevelopmentTag(): SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sizeBox(20),

              // Track Parcel
              Container(
                padding: EdgeInsets.all(12),
                width: 335,
                decoration: BoxDecoration(
                  color: Color(0xFFF2670A),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    headingCustom("Track Parcel", Colors.white),
                    SizedBox(height: 5),
                    Text(
                      "Enter your parcel tracking number",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        // Wrap TextField with Expanded to use remaining space
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white, // White background color
                              hintText: 'Tracking number',
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    50), // 100% border radius
                                borderSide: BorderSide.none, // No border line
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            width:
                                10), // Add some space between TextField and IconButton
                        SizedBox(
                          height: 48,
                          width: 48,
                          child: IconButton.filled(
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(Color(
                                  0xFF0D66b7)), // Set background color to blue
                              foregroundColor: WidgetStateProperty.all(
                                  Colors.white), // Set icon color to white
                            ),
                            onPressed: () {},
                            icon: Icon(Icons.my_location_rounded),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),

              sizeBox(15),
              headingCustom('What would you like to do?'),
              sizeBox(10),

              // Express Delivery
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 335,
                    decoration: BoxDecoration(
                      color: Color(0xFFD2E5F6),
                      border: Border.all(
                          width: 1, color: Color.fromARGB(255, 149, 201, 246)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/svg/flash.svg',
                          semanticsLabel: 'App_Name',
                          width: 40,
                          height: 40,
                        ),
                        SizedBox(height: 5),
                        headingCustom("Express Delivery", Color(0xFFF2670A)),
                        SizedBox(height: 5),
                        Text(
                          "Courier takes only your package and delivers instantly",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    width: 335,
                    height: 120,
                    decoration: BoxDecoration(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Opacity(
                          opacity: 0.1, // Set opacity to 10%
                          child: SvgPicture.asset(
                            'assets/svg/flash.svg',
                            height: 100,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              sizeBox(10),

              // Ecommerce
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 335,
                    decoration: BoxDecoration(
                      // ignore: deprecated_member_use
                      color: Color(0xFFF2670A).withOpacity(0.2),
                      border: Border.all(width: 1, color: Color(0xFFF2670A)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SvgPicture.asset(
                          'assets/svg/stopwatch.svg',
                          semanticsLabel: 'App_Name',
                          width: 40,
                          height: 40,
                        ),
                        SizedBox(height: 5),
                        headingCustom("Ecommerce Delivery", Colors.blue),
                        SizedBox(height: 5),
                        Text(
                          "Courier comes to pick up on your specified date and time",
                          style: TextStyle(fontSize: 12, color: Colors.grey),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 10),
                    width: 335,
                    height: 140,
                    decoration: BoxDecoration(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Opacity(
                          opacity: 0.1, // Set opacity to 10%
                          child: SvgPicture.asset(
                            'assets/svg/stopwatch.svg',
                            height: 110,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              sizeBox(15),
              headingCustom('Recent Bookings'),
              sizeBox(10),
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

              underDevelopmentTag(),
              sizeBox(20),
            ],
          ),
        ),
      ),
       bottomNavigationBar: CustomBottomNavBar(
          selectedIndex: _selectedIndex,
          onTabSelected: _onTabSelected,
        ),
    ));
  }
}


class CustomBottomNavBar extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onTabSelected;

  const CustomBottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onTabSelected,
  }) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.selectedIndex,
      onTap: widget.onTabSelected,
      backgroundColor: Colors.white,
      selectedItemColor: Color(0xff0D66B7),
      unselectedItemColor: Color.fromARGB(255, 244, 172, 124),
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_rounded),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.book),
          label: 'My Bookings',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: 'Messages',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
