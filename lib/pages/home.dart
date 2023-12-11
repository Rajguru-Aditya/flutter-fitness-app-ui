import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar(),
      body: Column(children: [
        Container(
          margin: EdgeInsets.only(top: 40, left: 20, right: 20),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Color(0xff1d1617).withOpacity(0.11),
              spreadRadius: 0.0,
              blurRadius: 40,
            )
          ]),
          child: _searchField(),
        )
      ]),
    );
  }

  TextField _searchField() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search Pancake',
        hintStyle: TextStyle(
          color: Color(0xffdddada),
          fontSize: 14,
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            "assets/icons/Search.svg",
          ),
        ),
        suffixIcon: Container(
          width: 100,
          child: IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                VerticalDivider(
                  color: Colors.black,
                  thickness: 0.1,
                  endIndent: 10,
                  indent: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(
                    "assets/icons/Filter.svg",
                  ),
                ),
              ],
            ),
          ),
        ),
        fillColor: Colors.white,
        filled: true,
        contentPadding: EdgeInsets.all(10),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text('Fitness App',
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: GestureDetector(
        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: SvgPicture.asset(
            'assets/icons/Arrow - Left 2.svg',
            height: 20,
            width: 20,
          ),
          decoration: BoxDecoration(
            color: Color(0xFFE7E7E7),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
      ),
      actions: [
        GestureDetector(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.all(10),
              width: 37,
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/icons/dots.svg',
                height: 5,
                width: 5,
              ),
              decoration: BoxDecoration(
                color: Color(0xFFE7E7E7),
                borderRadius: BorderRadius.circular(50),
              ),
            )),
      ],
    );
  }
}
