import 'package:favorite_places_app/screens/add_place_screen.dart';
import 'package:favorite_places_app/widgets/place_list.dart';
import 'package:flutter/material.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Your places',
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => const AddPlaceScreen(),
              ));
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: const PlaceList(placeList: []),
    );
  }
}
