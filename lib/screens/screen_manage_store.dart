import 'package:dukkan/screens/screen_additional_info.dart';
import 'package:dukkan/screens/screen_payment.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/manage_store_widgets.dart';

class ScreenManageStore extends StatefulWidget {
  const ScreenManageStore({Key? key}) : super(key: key);

  @override
  State<ScreenManageStore> createState() => _ScreenManageStoreState();
}

class _ScreenManageStoreState extends State<ScreenManageStore> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: School',
      style: optionStyle,
    ),
    Text(
      'Index 4: School',
      style: optionStyle,
    ),
    Text(
      'Index 5: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 245, 245, 245),
        appBar: AppBar(
          title: Center(child: Text('Manage Store')),
          backgroundColor: const Color.fromARGB(255, 20, 110, 180),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.house),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.bagShopping),
              label: 'Orders',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.boxesStacked),
              label: 'Products',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.layerGroup),
              label: 'Manage',
            ),
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.user),
              label: 'Account',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color.fromARGB(255, 20, 110, 180),
          onTap: _onItemTapped,
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenPayment()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 5, top: 10, bottom: 10),
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white,
                        ),
                        child: InsideText(
                          logoColor: Color.fromARGB(255, 241, 112, 23),
                          ContainerText: 'Marketing\nDesigns',
                          logo: Icons.campaign,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScreenAdditionalInfo()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 15, top: 10, bottom: 10),
                      child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white,
                          ),
                          child: InsideText(
                            logoColor: Color.fromARGB(255, 98, 213, 99),
                            ContainerText: 'Online\nPayments',
                            logo: Icons.currency_rupee,
                          )),
                    ),
                  ),
                ),
              ],
            ),
            // row2============================================================
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 5, top: 10, bottom: 10),
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white,
                        ),
                        child: InsideText(
                          logoColor: Color.fromARGB(255, 242, 179, 83),
                          ContainerText: 'Discount\nCoupons',
                          logo: Icons.percent,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 15, top: 10, bottom: 10),
                      child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white,
                          ),
                          child: InsideText(
                            logoColor: Color.fromARGB(255, 24, 170, 157),
                            ContainerText: 'My\nCustomer',
                            logo: Icons.group,
                          )),
                    ),
                  ),
                ),
              ],
            ),
            // ROW3============================================================
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 5, top: 10, bottom: 10),
                      child: Container(
                        height: 120,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white,
                        ),
                        child: InsideText(
                          logoColor: Color.fromARGB(255, 124, 124, 124),
                          ContainerText: 'Store QR\nCode',
                          logo: Icons.qr_code_scanner,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 5.0, right: 15, top: 10, bottom: 10),
                      child: Container(
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white,
                          ),
                          child: InsideText(
                            logoColor: Color.fromARGB(255, 110, 66, 170),
                            ContainerText: 'Extra\nCharges',
                            logo: Icons.payments,
                          )),
                    ),
                  ),
                ),
              ],
            ),
            // ROW4====================================================================
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 5, top: 10, bottom: 10),
                    child: Container(
                      height: 120,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white,
                      ),
                      child: InsideText(
                        logoColor: Color.fromARGB(255, 192, 90, 132),
                        ContainerText: 'Order\nForm',
                        logo: Icons.article,
                        isNew: true,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
