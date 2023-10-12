import 'package:favorite_places_app/models/place.dart';
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
  final List<Place> _placeList = [];
  void _addItem() async {
    final newItem = await Navigator.of(context).push<Place>(MaterialPageRoute(
      builder: (ctx) => const NewItem(),
    ));
    if (newItem == null) {
      return;
    }
    setState(() {
      _placeList.add(newItem);
    });
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

    if (_placeList.isNotEmpty) {
      content = Center(
        child: ListView.builder(
          itemCount: _placeList.length,
          itemBuilder: (context, index) => Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(_placeList[index].title,
                    style: Theme.of(context).textTheme.titleMedium,
                    key: ObjectKey(_placeList[index].title)),
              ),
            ],
          ),
        ),
      );
    }

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
