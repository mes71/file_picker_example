import 'dart:io';

import 'package:flutter/material.dart';

class ImageViewer extends StatelessWidget {
  ImageViewer({Key? key, required this.imagePath}) : super(key: key);
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.85),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context, 'yes');
              },
              icon: Icon(Icons.check)),
          IconButton(
              onPressed: () {
                Navigator.pop(context, 'No');
              },
              icon: Icon(Icons.ac_unit_sharp))
        ],
      ),
      body: Container(
        child: Center(
          child: Image.file(File(imagePath)),
        ),
      ),
    );
  }
}
