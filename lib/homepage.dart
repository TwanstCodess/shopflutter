import 'package:flutter/material.dart';
import 'WidgetStyle.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int selectedIndex = 0; // ✅ Declare it here, as a state variable

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Widgetstyle().primaryColor,
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
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
                      textDirection: TextDirection.rtl,
                      decoration: InputDecoration(
                        suffixIcon: Icon(
                          Icons.search,
                          color: Widgetstyle().primaryColor,
                        ),
                        hintText: "گەڕان",
                        hintTextDirection: TextDirection.rtl,
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
            SizedBox(height: 8),
            Container(
              height: 35,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  5,
                  (index) => Padding(
                    padding: const EdgeInsets.only(right: 3),
                    child: ChoiceChip(
                      label: Text('کۆمپانیای ${index + 1}'),
                      selected: selectedIndex == index,
                      selectedColor: Widgetstyle().primaryColor,
                      side: BorderSide(
                        color: selectedIndex == index
                            ? Colors.blueAccent
                            : Colors.transparent,
                      ),
                      backgroundColor: Widgetstyle().secondaryColor,
                      labelStyle: TextStyle(
                        color: selectedIndex == index
                            ? Colors.white
                            : Colors.black,
                      ),
                      onSelected: (value) {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
