import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_holy_quran/globals.dart';
import 'package:the_holy_quran/tabs/surah_tab.dart';
import 'package:the_holy_quran/tabs/playlist_tab.dart';
import 'package:the_holy_quran/playlist/playlist_form.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: _appBar(context: context),
      bottomNavigationBar: _bottomNavigationBar(),
      body: DefaultTabController(
        length: 4,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                    SliverToBoxAdapter(
                      child: _greeting(),
                    ),
                    SliverAppBar(
                      pinned: true,
                      elevation: 0,
                      backgroundColor: background,
                      automaticallyImplyLeading: false,
                      shape: Border(
                          bottom: BorderSide(
                              width: 3, color: text.withOpacity(.1))),
                      bottom: PreferredSize(
                        preferredSize: const Size.fromHeight(0),
                        child: _tab(),
                      ),
                    )
                  ],
              body: const TabBarView(children: [SurahTab(), PlaylistTab()])),
        ),
      ),
    );
  }

  TabBar _tab() {
    return TabBar(
        unselectedLabelColor: text,
        labelColor: primary,
        indicatorColor: primary,
        indicatorWeight: 3,
        tabs: [
          _tabItem(label: "Surah"),
          _tabItem(label: "Playlist"),
        ]);
  }

  Tab _tabItem({required String label}) {
    return Tab(
      child: Text(
        label,
        style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }

  Column _greeting() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Assalamualaikum',
          style: GoogleFonts.poppins(
              fontSize: 18, fontWeight: FontWeight.w500, color: text),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          'Hamba Allah',
          style: GoogleFonts.poppins(
              fontSize: 24, fontWeight: FontWeight.w600, color: gray),
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }

  AppBar _appBar({required BuildContext context}) => AppBar(
        backgroundColor: background,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(children: [
          IconButton(
              onPressed: (() => Navigator.of(context).pop()),
              icon: SvgPicture.asset('assets/svgs/back-icon.svg')),
          const SizedBox(
            width: 24,
          ),
          Text(
            'Quran Learning',
            style: GoogleFonts.poppins(
                fontSize: 20, fontWeight: FontWeight.bold, color: primary),
          ),
          const Spacer(),
        ]),
      );

  BottomNavigationBar _bottomNavigationBar() => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: background,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          _bottomBarItem(icon: "assets/svgs/quran-icon.svg", label: "Quran"),
          _bottomBarItem(
              icon: "assets/svgs/riwayat-icon.svg", label: "Riwayat"),
        ],
      );

  BottomNavigationBarItem _bottomBarItem(
          {required String icon, required String label}) =>
      BottomNavigationBarItem(
          icon: SvgPicture.asset(
            icon,
            color: text,
          ),
          activeIcon: SvgPicture.asset(
            icon,
            color: primary,
          ),
          label: label);
}
