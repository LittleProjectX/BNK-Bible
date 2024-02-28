import 'package:flutter/material.dart';

class FieldPencarian extends StatelessWidget {
  const FieldPencarian({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: TextField(
        autocorrect: false,
        autofocus: false,
        decoration: InputDecoration(
          hintText: 'CARI LAGU',
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
            color: Colors.black, // Warna ikon di sini
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
    );
  }
}
