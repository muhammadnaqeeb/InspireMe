// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class QuotesCard extends StatelessWidget {
  final String auther;
  final String quote;

  const QuotesCard({
    Key? key,
    required this.auther,
    required this.quote,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        // color: const Color(0xFFF8F8FF),
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Text(quote),
          const SizedBox(
            height: 10,
          ),
          Text(
            auther,
            style: const TextStyle(fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.share,
                color: Colors.lightBlue,
              ),
              SizedBox(
                width: 35,
              ),
              Icon(
                Icons.favorite_border_rounded,
                color: Colors.red,
              )
            ],
          )
        ],
      ),
    );
  }
}
