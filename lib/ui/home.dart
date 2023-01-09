/*
import 'dart:developer';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:file_picker_example/ui/image_viewer.dart';
import 'package:flutter/material.dart';
import 'package:open_filex/open_filex.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  File? mfile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (mfile != null) ...{Image.file(mfile!)},
          ElevatedButton(
              onPressed: () async {
                FilePickerResult? result =
                    await FilePicker.platform.pickFiles();

                if (result != null) {
                  PlatformFile file = result.files.first;
                  log('path : ${file.path}');
                  log('extension : ${file.extension}');

                  var res = await Navigator.push(
                      context,
                      PageRouteBuilder(
                        opaque: true,
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            ImageViewer(
                          imagePath: file.path!,
                        ),
                      ));

                  log('<========================$res============================>');
                  //openFile(file2);
                }
              },
              child: Text('Get File'))
        ],
      ),
    );
  }

  Future<void> openFile(PlatformFile file) async {
    var res = await OpenFilex.open(file.path);
    log(res.message);
    log(res.type.name);
  }
}
*/
