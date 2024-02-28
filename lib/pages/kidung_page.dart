import 'package:bnk_bible/widgets/field_pencarian.dart';
import 'package:bnk_bible/widgets/jenis_lagu.dart';
import 'package:flutter/material.dart';

class KidungPage extends StatelessWidget {
  const KidungPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(15),
            child: Column(
              children: [
                const FieldPencarian(),
                const SizedBox(
                  height: 25,
                ),
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/listpage');
                  },
                  child: const JenisLagu(
                    judul: 'Kidung Jemaat',
                    bahasa: 'Bahasa Nias',
                    jmllagu: '100',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
