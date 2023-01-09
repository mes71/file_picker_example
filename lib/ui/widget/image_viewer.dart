import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class ImageViewer extends StatelessWidget {
  const ImageViewer({Key? key, required this.imagesPath}) : super(key: key);
  final List<PlatformFile> imagesPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.85),
      appBar: AppBar(
        backgroundColor: Colors.white10,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context, 'No');
            },
            icon: const Icon(Icons.arrow_back_rounded)),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context, 'yes');
              },
              icon: const Icon(Icons.check)),
        ],
      ),
      body: Column(
        children: [
           Expanded(flex: 1, child: Container()),
          Expanded(
              flex: 3,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => AspectRatio(
                        aspectRatio: 0.9,
                        child: Container(
                          margin: EdgeInsets.only(
                              left: 10,
                              right: index == (imagesPath.length - 1) ? 10 : 0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.white, width: 1),
                            image: DecorationImage(
                                image: FileImage(File(imagesPath[index].path!)),
                                fit: BoxFit.cover),
                          ),
                          child:Stack(
                            children: [

                            ],
                          ) ,
                        ),
                      ),
                  itemCount: imagesPath.length)),
          const Expanded(flex: 1, child: SizedBox()),
        ],
      ),
    );
  }
}
