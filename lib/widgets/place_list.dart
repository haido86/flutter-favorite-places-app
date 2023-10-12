import 'package:favorite_places_app/widgets/new_item.dart';
import 'package:flutter/material.dart';

class PlaceList extends StatefulWidget {
  const PlaceList({super.key});

  @override
  State<PlaceList> createState() {
    return _PlaceListState();
  }
}

class _PlaceListState extends State<PlaceList> {
  void _addItem() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => const NewItem(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your places',
        ),
        actions: [
          IconButton(
            onPressed: _addItem,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: const Center(child: Text("Hello ")),
    );
  }
}
