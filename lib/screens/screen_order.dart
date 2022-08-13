import 'package:dukkan/screens/screen_catalogue.dart';
import 'package:dukkan/screens/screen_payment.dart';
import 'package:dukkan/widgets/order_single_item.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ScreenOrder extends StatelessWidget {
  ScreenOrder({Key? key}) : super(key: key);

  TextStyle xsm = const TextStyle(fontSize: 15);
  TextStyle sm = const TextStyle(fontSize: 17, fontWeight: FontWeight.w500);
  TextStyle csm = const TextStyle(color: Colors.amber);
  Widget line = Container(
    height: 1,
    color: Color.fromARGB(255, 205, 205, 205),
  );
  Widget space = const SizedBox(
    height: 14,
  );
  Widget space0 = const SizedBox(
    height: 8,
  );
  Widget space1 = const SizedBox(
    height: 16,
  );
  Widget space2 = const SizedBox(
    height: 20,
  );
  Color gray0 = const Color.fromARGB(255, 148, 148, 148);
  Color gray1 = const Color.fromARGB(255, 134, 134, 134);
  Color blue1 = const Color.fromARGB(255, 20, 110, 180);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 20, 110, 180),
        title: Center(
          child: Text(
            'Order#1688068',
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('May 31, 05:54 PM', style: sm),
                Row(
                  children: [
                    Icon(
                      Icons.fiber_manual_record,
                      size: 18,
                      color: Color.fromARGB(255, 20, 110, 180),
                    ),
                    Text(
                      'Delivered',
                      style: const TextStyle(
                        fontSize: 15,
                        color: Color.fromARGB(255, 107, 107, 107),
                      ),
                    )
                  ],
                ),
              ],
            ),
            space,
            line,
            space,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '1 ITEM',
                  style: TextStyle(fontSize: 17, color: gray1),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.receipt,
                      color: blue1,
                    ),
                    Text(
                      'RECEIPT',
                      style: TextStyle(fontSize: 17, color: blue1),
                    )
                  ],
                ),
              ],
            ),
            space,
            singleItemTile(),
            space,
            space,
            line,
            space,
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Item Total',
                      style: sm,
                    ),
                    Text(
                      '\u{20B9}799',
                      style: sm,
                    ),
                  ],
                ),
                SizedBox(
                  height: 7,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Delivery',
                      style: sm,
                    ),
                    Text(
                      'Free',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 0, 199, 103)),
                    ),
                  ],
                ),
                space,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Grand Total',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w700,
                        )),
                    Text(
                      '\u{20B9}799',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                space,
                line,
                space,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'CUSTOMER DETAILS',
                      style: TextStyle(
                        color: gray1,
                        fontSize: 17,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.share, color: blue1),
                        Text(
                          'SHARE',
                          style: TextStyle(fontSize: 17, color: blue1),
                        )
                      ],
                    ),
                  ],
                ),
                space,
                space,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Deepa',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 19,
                          ),
                        ),
                        space0,
                        Text('+91-78534794', style: sm)
                      ],
                    ),
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.squarePhone,
                          color: blue1,
                          size: 30,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        FaIcon(
                          FontAwesomeIcons.whatsapp,
                          color: blue1,
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            space1,
            space0,
            Text(
              'Address',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 19,
              ),
            ),
            space0,
            Text(
              'D 1071 Sulthan Battery\nBoys Town, Periya P.O',
              style: sm,
            ),
            space1,
            space0,
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'City',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 19,
                      ),
                    ),
                    Text(
                      'Mananthavadi',
                      style: sm,
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pincode',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 19,
                      ),
                    ),
                    Text(
                      '653865',
                      style: sm,
                    ),
                  ],
                ),
              ],
            ),
            space2,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'payment',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 19,
                      ),
                    ),
                    Text(
                      'Online',
                      style: sm,
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(112, 195, 255, 202),
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 8.0,
                      right: 8,
                      top: 3,
                      bottom: 3,
                    ),
                    child: Text(
                      'PAID',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 107, 199, 112)),
                    ),
                  ),
                ),
              ],
            ),
            space2,
            line,
            space2,
            Text(
              'State',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 19,
              ),
            ),
            Text(
              'Kerala',
              style: sm,
            ),
            space2,
            Text(
              'Email',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 19,
              ),
            ),
            Text(
              'greenapple@gmail.com',
              style: sm,
            ),
            space2,
            space2,
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScreenCatalogue()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: blue1),
                  ),
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Share receipt',
                          style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w600,
                              color: blue1)),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
