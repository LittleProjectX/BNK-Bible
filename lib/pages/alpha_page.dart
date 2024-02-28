import 'package:bnk_bible/pages/beranda_page.dart';
import 'package:bnk_bible/pages/kidung_page.dart';
import 'package:bnk_bible/pages/posting_page.dart';
import 'package:flutter/material.dart';

class AlphaPage extends StatefulWidget {
  const AlphaPage({super.key});
  static const nameRoute = '/alphapage';

  @override
  State<AlphaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<AlphaPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const BerandaPage(),
    const KidungPage(),
    const PostingPage(),
  ];

  void _onTapNav(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.all(5),
          child: CircleAvatar(
            backgroundColor: const Color(0xffEB455F),
            child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/profilepage');
                },
                icon: const Icon(Icons.people)),
          ),
        ),
        title: Text(
          'BNK BIBLE',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.note_add))
        ],
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedItemColor: const Color(0xff2B3467),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          BottomNavigationBarItem(
              icon: Icon(Icons.music_note), label: 'Kidung'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Posting'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTapNav,
      ),
    );
  }
}
