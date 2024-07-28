import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" GETX PROJECT "),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text(
                ' Dailog Alert',
              ),
              visualDensity: VisualDensity.comfortable,
              subtitle: Text(
                'Dailog alert with GETX',
              ),
              onTap: () {
                Get.defaultDialog(
                    backgroundColor: Colors.amberAccent,
                    title: "Delete Chat",
                    titleStyle: TextStyle(color: Colors.black),
                    // Change title text color here

                    titlePadding: EdgeInsets.all(10),
                    middleText: "Are you sure to delete",
                    middleTextStyle: TextStyle(color: Colors.black),
                    contentPadding: EdgeInsets.all(10),
                    // textConfirm: 'Yes',
                    // textCancel: 'No',
                    confirm: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Ok',
                          style: TextStyle(color: Colors.black),
                        )));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('Bottom sheet'),
              visualDensity: VisualDensity.comfortable,
              subtitle: Text('Bototom Sheet with GETX'),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Card(
                          child: ListTile(
                            leading: const Icon(Icons.light_mode),
                            title: const Text('Light Theme'),
                            onTap: () {
                              Get.changeTheme(ThemeData.light());
                              Get.back();
                            },
                          ),
                        ),
                        Card(
                          child: ListTile(
                            leading: const Icon(Icons.dark_mode),
                            title: const Text('Dark Theme'),
                            onTap: () {
                              Get.changeTheme(ThemeData.dark());
                              Get.back();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            'Umar',
            'Learn Flutter',
            snackPosition: SnackPosition.TOP,
            // backgroundColor: Colors.blueAccent,
            borderRadius: 10,
            margin: const EdgeInsets.all(10),
            colorText: Colors.white,
            duration: const Duration(seconds: 3),
            icon: const Icon(Icons.info, color: Colors.amber),
            shouldIconPulse: true,
            barBlur: 20,
            isDismissible: true,
            forwardAnimationCurve: Curves.easeOutBack,
          );
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.amber,
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
