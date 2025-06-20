import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.vertical(
            bottom: Radius.circular(20),
          ),
        ),
        title: Text("Home Page", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
      ),

      body:Column(
        children: [
          SizedBox(height: 20),
          Text("Welcome to the Home Page", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          SizedBox(height: 20),
         IconButton(onPressed: CountFun, icon: Icon(Icons.home, size: 50, color: Colors.indigoAccent)),
          SizedBox(height: 20),
          Text("This is a simple home page", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
        ],
      )
    ));

   
  }

   CountFun(){
      
    }
}