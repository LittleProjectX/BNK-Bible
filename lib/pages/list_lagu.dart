import 'package:bnk_bible/widgets/field_pencarian.dart';
import 'package:bnk_bible/widgets/item_lagu.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});
  static const nameRoute = '/listpage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Lagu'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            FieldPencarian(),
            SizedBox(
              height: 15,
            ),
            ItemLagu()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
