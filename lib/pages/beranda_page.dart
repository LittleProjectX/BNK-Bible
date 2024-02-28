import 'package:bnk_bible/providers/alkitab_prov.dart';
import 'package:bnk_bible/widgets/dropdown_besar.dart';
import 'package:bnk_bible/widgets/dropdown_kecil.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({super.key});

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  String selectKitab = '';

  @override
  Widget build(BuildContext context) {
    final provItem = Provider.of<Alkitabs>(context, listen: false);
    final List<String> namaKitab = provItem.pLama + provItem.pBaru;
    handleKitab(String selectNamaKitab) {
      setState(() {
        selectKitab = selectNamaKitab;
      });
    }

    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 205,
                decoration: const BoxDecoration(color: Color(0xffEB455F)),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Pasal : ',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SmallDropD(
                            pasalAyat: [],
                          ),
                          SizedBox(
                            width: 37,
                          ),
                          Text(
                            'Ayat : ',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          SmallDropD(
                            pasalAyat: [],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color(0xff2B3467))),
                            onPressed: () {},
                            child: const Text(
                              'CARI AYAT',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20),
                            )),
                      )
                    ],
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back_ios_new)),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    'KEJADIAN 1 : 1',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_forward_ios))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
