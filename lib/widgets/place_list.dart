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
    Widget content = Center(
        child: Text(
      'There is no place added.',
      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
            color: Theme.of(context).colorScheme.onBackground,
          ),
    ));

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
      body: content,
    );
  }
}
