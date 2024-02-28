import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class CobaPage extends StatefulWidget {
  const CobaPage({super.key});

  @override
  State<CobaPage> createState() => _HomePageState();
}

class _HomePageState extends State<CobaPage> {
  String selectedCountry =
      "Indonesia"; // Inisialisasi variabel untuk menyimpan hasil seleksi

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DropDown')),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          children: [
            DropdownSearch<String>(
              popupProps: const PopupProps.menu(
                showSelectedItems: true,
              ),
              items: const ["Brazil", "Italia (Disabled)", "Tunisia", 'Canada'],
              dropdownDecoratorProps: DropDownDecoratorProps(
                dropdownSearchDecoration: InputDecoration(
                  labelText: "Menu mode",
                  hintText: "Country in menu mode",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              onChanged: (String? selectedValue) {
                // Simpan hasil seleksi ke dalam variabel
                setState(() {
                  selectedCountry =
                      selectedValue ?? ""; // Jika null, atur ke string kosong
                });

                // Lakukan tindakan lain yang diperlukan di sini
              },
              selectedItem: selectedCountry,
            ),
            const SizedBox(height: 20),
            Text("Selected Country: $selectedCountry",
                style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
