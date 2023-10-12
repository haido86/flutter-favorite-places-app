import 'package:flutter/material.dart';

class PlaceDetailScreen extends StatelessWidget {
  final String title;
  const PlaceDetailScreen({
    super.key,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
