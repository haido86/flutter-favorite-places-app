import 'package:flutter/material.dart';

class InputImage extends StatefulWidget {
  const InputImage({super.key});
  @override
  State<InputImage> createState() {
    return _InputImageState();
  }
}

class _InputImageState extends State<InputImage> {
  void _takePicture() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
        ),
      ),
      alignment: Alignment.center,
      height: 250,
      width: double.infinity,
      child: TextButton.icon(
        onPressed: _takePicture,
        icon: const Icon(Icons.camera),
        label: const Text('Take picture'),
      ),
    );
  }
}
