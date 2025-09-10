import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GetXPage extends StatefulWidget {
  const GetXPage({super.key});

  @override
  State<GetXPage> createState() => _GetXPageState();
}

class _GetXPageState extends State<GetXPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX'),
      ),
      body: Center(
        child: Column(
          children: [
            FilledButton(
                onPressed: () {
                  Get.snackbar('แจ้งเตือน', 'ทดสอบแอป');
                },
                child: const Text('Snack Bar')),
            FilledButton(
                onPressed: () {
                  Get.defaultDialog(
                      title: 'ยินดีด้วย',
                      content: const Column(
                        children: [Text('คุณถูกหวย'), Text('เล่นล้อ!!!')],
                      ),
                      barrierDismissible: false,
                      actions: [
                        TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: const Text('ปิด')),
                        FilledButton(
                            onPressed: () {}, child: const Text('ตกลง')),
                      ]);
                },
                child: const Text('Get Dialog')),
            FilledButton(
              onPressed: () {
                if (Get.isDarkMode) {
                  Get.changeThemeMode(ThemeMode.light); // เปลี่ยนเป็นสว่าง
                } else {
                  Get.changeThemeMode(ThemeMode.dark); // เปลี่ยนเป็นมืด
                }
              },
              child: const Text('Theme Change'),
            ),
            FilledButton(
                onPressed: () {
                  var width = Get.width;
                  var heigh = Get.height;
                  // log('$width X $heigh ');
                  var fontSize = Get.textTheme.bodyMedium!.fontSize;
                  // log('Font size: $fontSize');
                  final gs = GetStorage();
                  gs.write('MyText', 'Hello World!!');
                },
                child: const Text(
                  'Write',
                  style: TextStyle(),
                )),
            FilledButton(
                onPressed: () {
                  final gs = GetStorage();
                  String text = gs.read('MyText') ?? 'No Text';
                  log(text);
                },
                child: const Text('Read')),
          ],
        ),
      ),
    );
  }
}
