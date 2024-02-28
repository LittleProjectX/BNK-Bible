import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

class BigDropD extends StatefulWidget {
  final List<String> daftarKitab;
  final Function(String) onItemSelected;

  const BigDropD(
      {super.key, required this.daftarKitab, required this.onItemSelected});

  @override
  State<BigDropD> createState() => _BigDropDState();
}

class _BigDropDState extends State<BigDropD> {
  String selectedKitab = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(40)),
      child: DropdownSearch(
        items: widget.daftarKitab,
        onChanged: (String? selectedValue) {
          setState(() {
            selectedKitab = selectedValue ?? "";
          });
        },
        selectedItem: selectedKitab,
        dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40)))),
      ),
    );
  }
}
