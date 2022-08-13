import 'dart:ffi';

import 'package:flutter/material.dart';

class CatalogueTile extends StatefulWidget {
  const CatalogueTile(
      {Key? key, required this.heading, required this.price, required this.img})
      : super(key: key);
  final String heading;
  final num price;
  final Image img;
  @override
  State<CatalogueTile> createState() => _CatalogueTileState();
}

class _CatalogueTileState extends State<CatalogueTile> {
  bool eccc = true;
  @override
  Widget build(BuildContext context) {
    widget.heading;
    return Card(
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 255, 255, 255),
                    blurRadius: 1.0,
                  )
                ]),
                height: 80,
                child: Padding(
                    padding: const EdgeInsets.only(left: 8.0, top: 8),
                    child: widget.img),
              ),
              SizedBox(
                width: 15,
              ),
              SizedBox(
                height: 130,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 170,
                          child: Text(
                            widget.heading,
                            style: TextStyle(fontSize: 20),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Icon(Icons.more_vert),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Text('1 piece'),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      '\u{20B9}${widget.price}',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Text(
                          'in stock',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 113, 220, 118)),
                        ),
                        SizedBox(
                          width: 110,
                        ),
                        Switch(
                          value: eccc,
                          onChanged: (value) {
                            setState(
                              () {
                                eccc = value;
                                //eccc = !eccc;
                              },
                            );
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            height: 1,
            width: 500,
            color: Color.fromARGB(255, 206, 206, 206),
          ),
          Container(
            height: 50,
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.share,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Share Product',
                  style: TextStyle(fontSize: 19),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
