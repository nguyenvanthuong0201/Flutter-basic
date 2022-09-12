import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LessonOne extends StatelessWidget {
  const LessonOne({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.teal,
          leading: const Icon(
            Icons.center_focus_weak_sharp,
            color: Colors.red,
          ),
          title: const Text('Home page'),
          actions: const [
            Icon(
              Icons.center_focus_weak_sharp,
              color: Colors.red,
            ),
            Icon(
              Icons.center_focus_weak_sharp,
              color: Colors.red,
            ),
            Icon(
              Icons.center_focus_weak_sharp,
              color: Colors.red,
            ),
          ],
        ),
        body: Container(
          alignment: Alignment.center,
          color: Colors.blueAccent,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text("hello world"),
                Text("hello world"),
                Text("hello world"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text("A")),
                ElevatedButton.icon(
                    onPressed: () {},
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)),
                    icon: const Icon(Icons.night_shelter),
                    label: const Text('A'))
              ],
            ),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){},
          backgroundColor: Colors.black,
          foregroundColor: Colors.red,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
        ),
      ),
    );
  }
}
