import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class SmallDropD extends StatelessWidget {
  final List<String> pasalAyat;
  const SmallDropD({super.key, required this.pasalAyat});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 45,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(40)),
      child: DropdownSearch(
        items: pasalAyat,
        dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40)))),
      ),
    );
  }
}
