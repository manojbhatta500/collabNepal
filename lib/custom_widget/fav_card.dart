import 'package:flutter/material.dart';

class Fav_card extends StatelessWidget {
  final String name;
  final String quantity;
  final String price;
  final String image;
  const Fav_card(
      {super.key,
      required this.image,
      required this.name,
      required this.quantity,
      required this.price});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 0.15 * height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25), color: Color(0xffD9D9D9)),
      child: Row(
        children: [
          Image.asset(
            '$image',
            height: double.infinity,
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 0.5 * width,
                height: 48,
                child: Text(
                  "$name",
                  softWrap: true,
                  style: const TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff000000),
                    height: 20 / 15,
                  ),
                  maxLines: 3,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
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
              )
            ],
          )
        ],
      ),
    );
  }
}
