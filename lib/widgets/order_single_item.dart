import 'package:flutter/material.dart';

class singleItemTile extends StatelessWidget {
  const singleItemTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 1.0,
            )
          ]),
          height: 80,
          child: Image(
            image: AssetImage('assets/images/2.jpg'),
          ),
        ),
        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore | Men |Navy Blue',
              style: TextStyle(fontSize: 20),
            ),
            Text('1 piece'),
            Text('Size: XL'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.looks_one,
                      color: Color.fromARGB(255, 20, 110, 180),
                    ),
                    Text(
                      'x \u{20B9}799',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  width: 130,
                ),
                Text(
                  '\u{20B9}799',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
