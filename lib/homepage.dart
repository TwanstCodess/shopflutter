import 'package:flutter/material.dart';
import 'WidgetStyle.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Widgetstyle().primaryColor,
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.vertical(
              bottom: Radius.circular(20),
            ),
          ),
          title: Text(
            "Lourd ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        body: Column(
          children: [
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 15),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Widgetstyle().primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),

                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu, color: Colors.white),
                  ),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: SizedBox(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(0xfff0f0f0),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Widgetstyle().primaryColor,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
