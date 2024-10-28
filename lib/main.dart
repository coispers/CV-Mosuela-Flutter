import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'login_page.dart';
import 'profile_picture.dart';

void main() {
  runApp(MaterialApp(
    home: LoginPage(), //set login page to be the home page
  ));
}

class MyCVPage extends StatefulWidget {
  @override
  MyCVPageState createState() => MyCVPageState();
}

class MyCVPageState extends State<MyCVPage> {
  //Uint8List holds values for images
  Uint8List? image;
  void selectImage() async {
    Uint8List img = await changeProfilePicture(ImageSource.gallery);
    setState(() {
      image = img;
    });
  }

  void removeImage() {
    setState(() {
      image = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 222, 222),
      appBar: AppBar(
        title: const Text("My CV"),
        backgroundColor: Colors.blue,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
        iconTheme: const IconThemeData(
          color: Colors.white, //hamburger menu color
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'CV Section',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  )),
            ),
            //contents inside the menu
            ListTile(
                leading: const Icon(Icons.school_rounded),
                title: const Text('Education'),
                onTap: () {
                  //none for now
                }),
            ListTile(
              leading: const Icon(Icons.code_rounded),
              title: const Text('Skill'),
              onTap: () {
                //none for now
              },
            ),
            ListTile(
              leading: const Icon(Icons.create_new_folder_rounded),
              title: const Text('Projects'),
              onTap: () {
                //none for now
              },
            ),
            ListTile(
              leading: const Icon(Icons.download_done_rounded),
              title: const Text('Experience'),
              onTap: () {
                //none for now
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout_rounded),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            )
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                image != null
                    ? CircleAvatar(
                        radius: 50,
                        backgroundImage: MemoryImage(image!),
                      )
                    : const CircleAvatar(
                        radius: 50,
                        backgroundColor: Color(0xFFBBDCFB),
                        child: Text(
                          'FM',
                          style:
                              TextStyle(fontSize: 40, color: Color(0xFF317fca)),
                        ),
                      ),
                Positioned(
                  bottom: 4,
                  left: 4,
                  child: IconButton(
                    onPressed: selectImage,
                    icon: const Icon(Icons.add_photo_alternate_rounded),
                    color: Colors.blue,
                    iconSize: 18,
                  ),
                ),
                Positioned(
                  bottom: 4,
                  right: 4,
                  child: IconButton(
                    onPressed: removeImage,
                    icon: const Icon(Icons.no_photography_rounded),
                    color: Colors.blue,
                    iconSize: 18,
                  ),
                ),
              ],
            ),
            const Text(
              "Francois Louise C. Mosuela",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const Text(
              "+63 966 810 7948",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                  color: Color.fromARGB(160, 0, 0, 0)),
            ),
            const Text(
              "francoislouisemosuela@gmail.com",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                  color: Color.fromARGB(160, 0, 0, 0)),
            ),
            const Card(
                color: Colors.white,
                child: SizedBox(
                  width: 500,
                  height: 100,
                  child: Text('Professional Goal'),
                )),
          ],
        ),
      ),
    );
  }
}
