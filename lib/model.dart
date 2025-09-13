import 'package:flutter/material.dart';

class CategoryModel {
  final String name;
  final String images;

  CategoryModel({required this.name, required this.images});
}

// product model

class ProductModel {
  final String name;
  final String images;
  final String price;
  final String rate;
  final String rateCount;

  ProductModel({
    required this.name,
    required this.images,
    required this.price,
    required this.rate,
    required this.rateCount,
  });
}
