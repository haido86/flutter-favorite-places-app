import 'package:flutter/material.dart';

import 'package:favorite_places_app/models/place.dart';
import 'package:favorite_places_app/screens/place_detail_screen.dart';

class PlaceList extends StatelessWidget {
  final List<Place> placeList;
  const PlaceList({
    super.key,
    required this.placeList,
  });

  @override
  Widget build(BuildContext context) {
    if (placeList.isEmpty) {
      return Center(
          child: Text(
        'There is no place added.',
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
            ),
      ));
    }
    return ListView.builder(
      itemCount: placeList.length,
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => PlaceDetailScreen(place: placeList[index]),
          ));
        },
        leading: CircleAvatar(
          radius: 26,
          backgroundImage: FileImage(placeList[index].image),
        ),
        title: Text(placeList[index].title,
            style: Theme.of(context).textTheme.titleMedium,
            key: ObjectKey(placeList[index].title)),
      ),
    );
  }
}
