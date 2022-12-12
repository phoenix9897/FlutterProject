import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:postgres/postgres.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 40, 177, 145),
          title: const Text("Profile Screen"),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 40, 177, 145),
                ),
                child: Text(
                  'User Information Screen',
                  style:
                      GoogleFonts.notoSerif(fontSize: 28, color: Colors.white),
                  textAlign: TextAlign.right,
                ),
              ),
              ListTile(
                title: Text(
                  'This screen shows the information about user. \n ',
                  style: GoogleFonts.manrope(fontSize: 20, wordSpacing: .1),
                  textAlign: TextAlign.left,
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Text("Name:",style:TextStyle(fontSize: 24,)),
              Text("Surname:",style:TextStyle(fontSize: 24),),
              Text("Authority:",style:TextStyle(fontSize: 24),),
            ],
          ),
        ));
  }
}
