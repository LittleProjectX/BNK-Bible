import 'package:flutter/material.dart';

class ButtonFull extends StatelessWidget {
  const ButtonFull({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: const Color(0xffEB455F), width: 2)),
        child: const Padding(
          padding: EdgeInsets.fromLTRB(15, 5, 5, 5),
          child: Text(
            'Postingan Saya',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ));
  }
}
