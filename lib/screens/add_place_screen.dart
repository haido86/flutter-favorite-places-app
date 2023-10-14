import 'package:favorite_places_app/models/place.dart';
import 'package:favorite_places_app/providers/user_places_provider.dart';
import 'package:favorite_places_app/screens/places_screen.dart';
import 'package:favorite_places_app/widgets/image_input.dart';
import 'package:favorite_places_app/widgets/place_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPlaceScreen extends ConsumerStatefulWidget {
  const AddPlaceScreen({super.key});
  @override
  ConsumerState<AddPlaceScreen> createState() {
    return _AddPlaceScreenState();
  }
}

class _AddPlaceScreenState extends ConsumerState<AddPlaceScreen> {
  final _titleController = TextEditingController();

  void _savePlace() {
    final enteredTitle = _titleController.text;
    if (enteredTitle.isEmpty) {
      return;
    }
    ref.read(userPlacesProvider.notifier).addPlace(
          Place(title: enteredTitle),
        );
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new place'),
      ),
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Title',
                ),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onBackground,
                ),
                controller: _titleController,
              ),
              const SizedBox(
                height: 12,
              ),
              const InputImage(),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                  onPressed: _savePlace,
                  icon: const Icon(Icons.add),
                  label: const Text('Add place'))
            ],
          )),
    );
  }
}
