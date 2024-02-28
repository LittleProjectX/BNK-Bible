import 'package:bnk_bible/widgets/button_full.dart';
import 'package:flutter/material.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({super.key});
  static const nameRoute = '/profilepage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.note_add))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color(0xffEB455F)),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: const Color(0xffEB455F),
                      borderRadius: BorderRadius.circular(40)),
                  child: const Icon(Icons.change_circle),
                ),
              ),
              const Text(
                'NAMA PENGGUNA',
                style: TextStyle(fontSize: 26),
              ),
              const Text(
                '@username123',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              ),
              const Text(
                '+62 812 3342 1222',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 30,
              ),
              const ButtonFull(),
              const SizedBox(
                height: 5,
              ),
              const ButtonFull(),
              const SizedBox(
                height: 5,
              ),
              const ButtonFull(),
              const SizedBox(
                height: 5,
              ),
              const ButtonFull(),
              const SizedBox(
                height: 5,
              ),
              const ButtonFull(),
              const SizedBox(
                height: 5,
              ),
              const ButtonFull(),
              const Spacer(),
              const Text('BNK BIBLE'),
              const Text(
                'v00.01',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.copyright_rounded,
                    size: 15,
                  ),
                  Text(
                    ' copyright',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
