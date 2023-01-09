import 'dart:math';

import 'package:file_picker/file_picker.dart';
import 'package:file_picker_example/ui/widget/image_viewer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          alignment: Alignment.center,
          child: Wrap(runSpacing: 25, spacing: 25, children: [
            //this section for chose picture
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Color((Random().nextDouble() * 0xFFFFFF).toInt())
                      .withOpacity(1.0),
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: TextButton(
                    onPressed: () async {
                      FilePickerResult? result = await FilePicker.platform
                          .pickFiles(
                              allowMultiple: true,
                              allowCompression: true,
                              allowedExtensions: ['jpg', 'jpeg', 'png'],
                              type: FileType.custom);

                      if (result != null) {
                        var res = await Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder:
                                  (context, animation, secondaryAnimation) =>
                                      ImageViewer(imagesPath: result.files),
                            ));

                        debugPrint(res);
                      }
                    },
                    child: Text(
                      'Picture',
                      style: TextStyle(fontSize: 28, color: Colors.black),
                    )),
              ),
            ),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Color((Random().nextDouble() * 0xFFFFFF).toInt())
                      .withOpacity(1.0),
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Picture',
                      style: TextStyle(fontSize: 28, color: Colors.black),
                    )),
              ),
            ),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Color((Random().nextDouble() * 0xFFFFFF).toInt())
                      .withOpacity(1.0),
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Picture',
                      style: TextStyle(fontSize: 28, color: Colors.black),
                    )),
              ),
            ),
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                  color: Color((Random().nextDouble() * 0xFFFFFF).toInt())
                      .withOpacity(1.0),
                  borderRadius: BorderRadius.circular(25)),
              child: Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Picture',
                      style: TextStyle(fontSize: 28, color: Colors.black),
                    )),
              ),
            ),
          ]),
        ));
  }
}
