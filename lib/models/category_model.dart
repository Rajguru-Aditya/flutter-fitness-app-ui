import 'package:flutter/material.dart';

class CategoryModel {
  final String name;
  final String image;
  final Color boxColor;

  CategoryModel(
      {required this.name, required this.image, required this.boxColor});

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(CategoryModel(
        name: 'Salad',
        image: 'assets/images/plate.svg',
        boxColor: const Color(0xff92a3fd)));

    categories.add(CategoryModel(
        name: 'Cake',
        image: 'assets/images/pancakes.svg',
        boxColor: const Color(0xfffedb90)));

    categories.add(CategoryModel(
        name: 'Pie',
        image: 'assets/images/pie.svg',
        boxColor: const Color(0xffa0e6be)));

    categories.add(CategoryModel(
        name: 'Smoothies',
        image: 'assets/images/orange-snacks.svg',
        boxColor: const Color(0xffe0b0ff)));

    return categories;
  }
}
