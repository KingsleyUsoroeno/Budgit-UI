import 'package:flutter/material.dart';

class NumberTales extends StatelessWidget {
  final List<String> numbers;

  NumberTales(this.numbers);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: numbers
                .map(
                  (e) => Text(
                    e,
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                      fontFamily: "Caros",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
