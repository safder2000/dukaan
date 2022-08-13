import 'dart:math';

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:dukkan/widgets/tap_expand.dart';

class TransactionLimitBar extends StatelessWidget {
  const TransactionLimitBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.black12, width: 1)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Transaction Limit',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'A free limit up to which you will recive \nthe online payment directly in your bank',
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              SizedBox(
                height: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.black12,
                  valueColor: AlwaysStoppedAnimation(
                    Color.fromARGB(255, 20, 110, 180),
                  ),
                  value: 0.8,
                  minHeight: 8,
                ),
              ),
              // LinearPercentIndicator(
              //   animation: true,
              //   lineHeight: 8.0,
              //   animationDuration: 2000,
              //   percent: 0.9,
              //   barRadius: Radius.circular(20),
              //   progressColor: Color.fromARGB(255, 20, 110, 180),
              // )
              SizedBox(
                height: 5,
              ),
              Text(
                '65456 left out of \u{20B9}50,0000',
                style: TextStyle(color: Colors.black45),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'increas the limit',
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 18, 111, 180),
                ),
              )
            ],
          ),
        ));
  }
}

// =================================================================================
class TransactionList extends StatelessWidget {
  TransactionList({Key? key, required this.img, required this.cost})
      : super(key: key);
  final img;
  num cost;

  @override
  Widget build(BuildContext context) {
    final order = cost * cost;
    final deposit = cost * cost * cost;
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(
              height: 70,
              width: 70,
              child: Image(
                image: img,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Order #$order',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'jul 12, 12:08 PM',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 118, 118, 118),
                ),
              ),
            ]),
            Expanded(
              child:
                  Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Text(
                  '\u{20B9}$cost',
                  style: TextStyle(
                    color: Color.fromARGB(255, 27, 105, 160),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.fiber_manual_record,
                      size: 15,
                      color: Color.fromARGB(255, 21, 179, 21),
                    ),
                    Text('Successful',
                        style: TextStyle(
                            color: Color.fromARGB(255, 118, 118, 118),
                            fontWeight: FontWeight.w600,
                            fontSize: 14)),
                  ],
                )
              ]),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(
              '\u{20B9}799 deposited to :$deposit',
              style: TextStyle(
                color: Color.fromARGB(255, 118, 118, 118),
              ),
            ),
          ],
        ),
        SizedBox(height: 14),
        Container(
          height: 1,
          color: Color.fromARGB(255, 201, 201, 201),
        ),
      ],
    );
  }
}

// ==================================features icons==============

class FeaturesLang extends StatelessWidget {
  const FeaturesLang({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 22,
      backgroundColor: Color.fromARGB(255, 37, 150, 190),
      child: CircleAvatar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        child: Icon(
          Icons.language,
          color: Color.fromARGB(255, 37, 150, 190),
        ),
      ),
    );
  }
}

class FeaturesVerify extends StatelessWidget {
  const FeaturesVerify({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 22,
      backgroundColor: Color.fromARGB(255, 37, 150, 190),
      child: CircleAvatar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        child: Icon(
          Icons.verified,
          color: Color.fromARGB(255, 37, 150, 190),
        ),
      ),
    );
  }
}

class FeaturesPc extends StatelessWidget {
  const FeaturesPc({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 22,
      backgroundColor: Color.fromARGB(255, 37, 150, 190),
      child: CircleAvatar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        child: Icon(
          Icons.computer,
          color: Color.fromARGB(255, 37, 150, 190),
        ),
      ),
    );
  }
}

class FeaturesSupport extends StatelessWidget {
  const FeaturesSupport({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 22,
      backgroundColor: Color.fromARGB(255, 37, 150, 190),
      child: CircleAvatar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        child: Icon(
          Icons.headset_mic,
          color: Color.fromARGB(255, 37, 150, 190),
        ),
      ),
    );
  }
}

// featuers Tile================================================
class Features1 extends StatelessWidget {
  const Features1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FeaturesLang(),
        SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Custom domain name',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
            Text(
                'Get your own custom domain and build\nyour barnd on the internet.',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 152, 152, 152)))
          ],
        )
      ],
    );
  }
}

class Features2 extends StatelessWidget {
  const Features2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FeaturesVerify(),
        SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Verified seller badge',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
            Text(
                'Get greem verified badge under your\nstore name and build trust.',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 152, 152, 152)))
          ],
        )
      ],
    );
  }
}

class Features3 extends StatelessWidget {
  const Features3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FeaturesPc(),
        SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Dukaan for PC',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
            Text('Access all the exclusive primium\nfeatures on Dukaan for PC.',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 152, 152, 152)))
          ],
        )
      ],
    );
  }
}

class Features4 extends StatelessWidget {
  const Features4({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FeaturesSupport(),
        SizedBox(
          width: 12,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Priority support',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
            Text(
                'Get your questions resolved with our\npriority customer support.',
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 152, 152, 152)))
          ],
        )
      ],
    );
  }
}

// ======== TAP to Expand Old =========================================================
class Questions extends StatelessWidget {
  const Questions({Key? key, this.qst = 'Question', this.ans = 'Answer'})
      : super(key: key);
  final qst;
  final ans;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              qst,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Icon(Icons.remove),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Row(
          children: [
            Text(ans,
                style: TextStyle(
                    fontSize: 17, color: Color.fromARGB(255, 87, 87, 87))),
          ],
        )
      ],
    );
  }
}

// ======== TAP to Expand New =========================================================
class TapExpand extends StatelessWidget {
  const TapExpand({Key? key, this.qst = 'Question', this.ans = 'Answer'})
      : super(key: key);
  final qst;
  final ans;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Center(
          child: TapToExpand(
            content: Column(
              children: <Widget>[
                Text(
                  ans,
                  style: const TextStyle(
                    fontSize: 17,
                    color: Color.fromARGB(255, 87, 87, 87),
                  ),
                ),
              ],
            ),
            title: Expanded(
              child: Text(
                qst,
                style: TextStyle(
                    color: Color.fromARGB(255, 11, 11, 11),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            onTapPadding: 0,
            closedHeight: 70,
            scrollable: false,
            borderRadius: 0,
            openedHeight: 300,
            boxShadow: [BoxShadow()],
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
