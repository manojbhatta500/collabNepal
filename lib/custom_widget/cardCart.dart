import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardCart extends StatelessWidget {
  final String name;
  final int quantity;
  final String price;
  final String image;

  const CardCart({
    Key? key,
    required this.image,
    required this.name,
    required this.quantity,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: 0.15 * height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Color(0xffD9D9D9),
      ),
      child: Row(
        children: [
          Expanded(
            child: Image.asset(
              '$image',
              height: double.infinity,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 0.5 * width, // Adjust the width as needed
                height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end, // Use spaceBetween
                  children: [
                    Expanded(
                      // Wrap the name text in an Expanded widget
                      child: Text(
                        "$name",
                        softWrap: true,
                        style: const TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff000000),
                          height: 20 / 15,
                        ),
                        maxLines: 3,
                        textAlign: TextAlign.left,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Checkbox(
                      shape: CircleBorder(),
                      value: false,
                      onChanged: (ont) {
                        print('ont');
                      },
                    ),
                  ],
                ),
              ),
              Text(
                "Quantity $quantity",
                style: const TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff000000),
                  height: 20 / 12,
                ),
                textAlign: TextAlign.left,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Rs. $price",
                    style: const TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff000000),
                      height: 20 / 15,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  CircleAvatar(
                    radius: 20,
                    child: IconButton(
                      onPressed: () {
                        print('pressed minus ');
                      },
                      icon: Icon(
                        CupertinoIcons.minus,
                      ),
                    ),
                  ),
                  Text(
                    '$quantity',
                    style: const TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff000000),
                      height: 20 / 15,
                    ),
                  ),
                  CircleAvatar(
                    radius: 20,
                    child: IconButton(
                      onPressed: () {
                        print('pressed plus ');
                      },
                      icon: Icon(
                        Icons.add,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
