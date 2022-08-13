import 'package:dukkan/screens/screen_order.dart';
import 'package:dukkan/widgets/transaction_limit_bar.dart';
import 'package:dukkan/widgets/video_player.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ScreenDukkanPremium extends StatefulWidget {
  const ScreenDukkanPremium({Key? key}) : super(key: key);

  @override
  State<ScreenDukkanPremium> createState() => _ScreenDukkanPremiumState();
}

class _ScreenDukkanPremiumState extends State<ScreenDukkanPremium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 20, 110, 180),
        title: Center(
          child: Text('Dukkan Premium', style: TextStyle(fontSize: 22)),
        ),
      ),
      body: ListView(
        children: [
          Stack(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: const Color.fromARGB(255, 20, 110, 180),
                  height: 100,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(255, 81, 81, 81),
                            blurRadius: 1.0,
                          ),
                        ]),
                    height: 200,
                  ),
                ),
              ),
              Positioned(
                top: 30,
                left: 90,
                child: SizedBox(
                    height: 60,
                    child: Image(
                        image: AssetImage('assets/logos/dukkan_logo.png'))),
              ),
              Positioned(
                top: 100,
                left: 33,
                child: Text(
                  'Get Dukkan Premium for just\n\u{20B9}4,999/year',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ),
              Positioned(
                top: 158,
                left: 60,
                child: Text(
                  'All advanced features for scalling your\nbusiness.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15, color: Color.fromARGB(255, 152, 152, 152)),
                ),
              ),
              Positioned(
                top: 74,
                left: 195,
                child: Text(
                  'PREMIUM',
                  style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 37, 150, 190),
                      fontWeight: FontWeight.w900),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Features',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 13, bottom: 13),
            child: Column(
              children: [
                Features1(),
                SizedBox(
                  height: 20,
                ),
                Features2(),
                SizedBox(
                  height: 20,
                ),
                Features3(),
                SizedBox(
                  height: 20,
                ),
                Features4(),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
              child: Container(
                  height: 2, color: Color.fromARGB(255, 180, 180, 180))),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              'What is Dkaan Premium',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              height: 170,
              child: YouTubeVideo(),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Frequently asked questions',
                    style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  // Questions(
                  //   qst: 'What type of business can use Dukaan\nPremium?',
                  //   ans:
                  //       'Dukaan caters to a wide variety sellers.\nBe it a small grocery store or a big lagacy\nbrand.anyone who wants to sell thier \nproducts/survices online Dukaan is a perfect \nplatfrom for you ',
                  // ),

                  TapExpand(
                    qst: 'What type of business can use Dukaan\nPremium?',
                    ans:
                        'Dukaan caters to a wide variety sellers.\nBe it a small grocery store or a big lagacy\nbrand.anyone who wants to sell thier \nproducts/survices online Dukaan is a perfect \nplatfrom for you ',
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                    color: Color.fromARGB(255, 180, 180, 180),
                  ),
                  TapExpand(
                    qst: 'What is your refund policy?',
                    ans:
                        'Dukaan caters to a wide variety sellers.\nBe it a small grocery store or a big lagacy\nbrand.anyone who wants to sell thier \nproducts/survices online Dukaan is a perfect \nplatfrom for you ',
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                    color: Color.fromARGB(255, 180, 180, 180),
                  ),
                  TapExpand(
                    qst:
                        'Will there be an automatic charge\nafter the paid trial?',
                    ans:
                        'Dukaan caters to a wide variety sellers.\nBe it a small grocery store or a big lagacy\nbrand.anyone who wants to sell thier \nproducts/survices online Dukaan is a perfect \nplatfrom for you ',
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                    color: Color.fromARGB(255, 180, 180, 180),
                  ),
                  TapExpand(
                    qst: 'What payment method do you offer?',
                    ans:
                        'Dukaan caters to a wide variety sellers.\nBe it a small grocery store or a big lagacy\nbrand.anyone who wants to sell thier \nproducts/survices online Dukaan is a perfect \nplatfrom for you ',
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                    color: Color.fromARGB(255, 180, 180, 180),
                  ),
                  TapExpand(
                    qst: 'What happence when free trial ends?',
                    ans:
                        'Dukaan caters to a wide variety sellers.\nBe it a small grocery store or a big lagacy\nbrand.anyone who wants to sell thier \nproducts/survices online Dukaan is a perfect \nplatfrom for you ',
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                    color: Color.fromARGB(255, 180, 180, 180),
                  ),
                  TapExpand(
                    qst: 'What are the terms for the custom domain?',
                    ans:
                        'Dukaan caters to a wide variety sellers.\nBe it a small grocery store or a big lagacy\nbrand.anyone who wants to sell thier \nproducts/survices online Dukaan is a perfect \nplatfrom for you ',
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                    color: Color.fromARGB(255, 180, 180, 180),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 3,
            color: Color.fromARGB(255, 180, 180, 180),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25,
                ),
                Text(
                  'Need help? Get in touch',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: Color.fromARGB(255, 180, 180, 180)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.chat_bubble,
                                color: const Color.fromARGB(255, 20, 110, 180),
                                size: 50,
                              ),
                              Text(
                                'Live Chat',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: Color.fromARGB(255, 180, 180, 180)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.call,
                                color: const Color.fromARGB(255, 20, 110, 180),
                                size: 50,
                              ),
                              Text(
                                'Phone call',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Container(
            height: 1,
            color: Color.fromARGB(255, 180, 180, 180),
          ),
          SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Select Domain',
                  style: TextStyle(
                      color: Color.fromARGB(255, 20, 110, 180),
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  elevation: 0,
                ),
              ),
              ElevatedButton(
                onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>  ScreenOrder()),
                      );},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Get Premium',
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 20, 110, 180),
                  elevation: 0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
