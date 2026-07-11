import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        backgroundColor: Colors.blueAccent,
        title: Text("Main", style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),),
        centerTitle: true,
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue,
        child: Column(
          children: [
            DrawerHeader(
              child: Icon(
                Icons.account_balance,
                size: 48,
                color: Colors.white,
              ),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white,),
              title: Text("H O M E", style: TextStyle(
                color: Colors.white,
              ),),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/homepage');
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Colors.white,),
              title: Text("S E T T I N G S", style: TextStyle(
                color: Colors.white,
              ),),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/settingspage');
              },
            )
          ],
        ),
      ),
    );
  }
}