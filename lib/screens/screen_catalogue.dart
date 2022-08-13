import 'package:dukkan/widgets/catalogue_tile.dart';
import 'package:flutter/material.dart';

class ScreenCatalogue extends StatelessWidget {
  ScreenCatalogue({Key? key}) : super(key: key);
  SizedBox space = SizedBox(
    height: 4,
  );
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 222, 222, 222),
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 20, 110, 180),
            actions: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 11.0,
                ),
                child: Icon(Icons.search),
              )
            ],
            title: Center(
              child: Text('    Catalogue', style: TextStyle(fontSize: 22)),
            ),
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text(
                    "Products",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ),
                Tab(
                  child: Text(
                    "Present",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              children: [
                CatalogueTile(
                  heading: 'Camara Holder Nicon',
                  price: 997,
                  img: Image(image: AssetImage('assets/images/4.jpg')),
                ),
                space,
                CatalogueTile(
                  heading: 'Keyboard RGB CsmicByte',
                  price: 677,
                  img: Image(image: AssetImage('assets/images/2.jpg')),
                ),
                space,
                CatalogueTile(
                  heading: 'Blue mug',
                  price: 677,
                  img: Image(image: AssetImage('assets/images/1.jpg')),
                ),
                space,
                CatalogueTile(
                  heading: 'logitech G502',
                  price: 1337,
                  img: Image(image: AssetImage('assets/images/3.jpg')),
                ),
                space,
                CatalogueTile(
                  heading: 'Keyboard RGB CsmicByte',
                  price: 1677,
                  img: Image(image: AssetImage('assets/images/2.jpg')),
                ),
                space,
              ],
            ),
          ),
        ));
  }
}
