import 'package:flutter/material.dart';

class ItemLagu extends StatelessWidget {
  const ItemLagu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
          color: const Color(0xff2B3467),
          borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        leading: const CircleAvatar(
          backgroundColor: Colors.amber,
        ),
        title: const Text(
          'Judul Lagu',
          style: TextStyle(color: Color(0xffEB455F)),
        ),
        subtitle: const Text(
          'Pencipta Lagu',
          style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white),
        ),
        trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.save,
              color: Colors.white,
            )),
      ),
    );
  }
}
