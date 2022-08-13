import 'package:flutter/material.dart';

class InsideText extends StatelessWidget {
  InsideText(
      {Key? key,
      this.logo = Icons.question_mark,
      this.logoColor = const Color.fromARGB(255, 198, 192, 170),
      this.ContainerText = 'Empty',
      this.isNew=false})
      : super(key: key);

  final logoColor;
  final logo;
  final ContainerText;
  final isNew;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: logoColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Icon(
                    logo,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              Visibility(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 26, 177, 26),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 6, right: 6, top: 3, bottom: 3),
                    child: Text('New', style: TextStyle(color: Colors.white)),
                  ),
                ),
                visible: isNew,
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            ContainerText,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
