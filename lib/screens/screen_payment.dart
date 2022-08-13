import 'package:dukkan/screens/screen_premium.dart';
import 'package:dukkan/widgets/transaction_limit_bar.dart';
import 'package:flutter/material.dart';

class ScreenPayment extends StatefulWidget {
  const ScreenPayment({Key? key}) : super(key: key);

  @override
  State<ScreenPayment> createState() => _ScreenPaymentState();
}

class _ScreenPaymentState extends State<ScreenPayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 20, 110, 180),
        title: Center(
          child: Text('Payment', style: TextStyle(fontSize: 22)),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.info))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            TransactionLimitBar(),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Default Method',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      )),
                  Row(
                    children: [
                      Text(
                        'Online Payments',
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 152, 152, 152)),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Payment Profile',
                      style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w500,
                      )),
                  Row(
                    children: [
                      Text(
                        'Bank Account',
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 152, 152, 152)),
                      ),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Color.fromARGB(255, 207, 207, 207),
            ),
            ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Payment Overview',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      )),
                  Row(
                    children: [
                      Text(
                        'Life Time',
                        style: TextStyle(
                            fontSize: 17,
                            color: Color.fromARGB(255, 152, 152, 152)),
                      ),
                      Icon(Icons.expand_more)
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 238, 116, 31),
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'AMOUNT ON HOLD',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '\u{20B9}0',
                            style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 255, 255, 255),
                            ),
                          ),
                        ]),
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ScreenDukkanPremium()),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 22, 179, 26),
                        borderRadius: BorderRadius.circular(8)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'AMOUNT RECEIVED',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '\u{20B9}13,332',
                              style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
              ],
            ), // =========================================TRANSACTIONS===========================================
            SizedBox(
              height: 20,
            ),
            Text(
              'Transactions',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 230, 230, 230),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, right: 12, top: 10, bottom: 10),
                    child: Text(
                      'On Hold',
                      style: TextStyle(
                          color: Color.fromARGB(255, 118, 118, 118),
                          fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 27, 105, 160),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, right: 12, top: 10, bottom: 10),
                    child: Text(
                      'Payouts(15)',
                      style: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 16),
                    ),
                  ),
                ),
                SizedBox(
                  width: 18,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 230, 230, 230),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, right: 12, top: 10, bottom: 10),
                    child: Text(
                      'Refunds',
                      style: TextStyle(
                          color: Color.fromARGB(255, 118, 118, 118),
                          fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            //======================LIST======================================
            TransactionList(
              img: AssetImage('assets/images/8.jpg'),
              cost: 800,
            ),
            TransactionList(
              img: AssetImage('assets/images/2.jpg'),
              cost: 589,
            ),
            TransactionList(
              img: AssetImage('assets/images/3.jpg'),
              cost: 765,
            ),
            TransactionList(
              img: AssetImage('assets/images/4.jpg'),
              cost: 552,
            ),
            TransactionList(
              img: AssetImage('assets/images/5.jpg'),
              cost: 999,
            ),
            TransactionList(
              img: AssetImage('assets/images/6.jpg'),
              cost: 778,
            ),
            TransactionList(
              img: AssetImage('assets/images/7.jpg'),
              cost: 976,
            ),
            TransactionList(
              img: AssetImage('assets/images/8.jpg'),
              cost: 589,
            ),
            TransactionList(
              img: AssetImage('assets/images/2.jpg'),
              cost: 890,
            ),
          ],
        ),
      ),
    );
  }
}
