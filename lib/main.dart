import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
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
                color: Colors
                    .blue, //box decoration after you open the hamburger menu
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
          ],
        ),
      ),
      body: const Center(
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: Color(0xFFBBDCFB),
              child: Text(
                'FM',
                style: TextStyle(fontSize: 40, color: Color(0xFF317fca)),
              ),
            ),
            Text(
              "Francois Louise C. Mosuela",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              "+63 966 810 7948",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                  color: Color.fromARGB(160, 0, 0, 0)),
            ),
            Text(
              "francoislouisemosuela@gmail.com",
              style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 13,
                  color: Color.fromARGB(160, 0, 0, 0)),
            ),
            Card(
                color: Colors.white, //background color for the card
                child: SizedBox(
                  width: 500,
                  height: 100,
                  child: Text('Professional Goal'),
                ))
          ],
        ),
      ),
    ),
  ));
}
