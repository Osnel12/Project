import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String content;
  final Icon icon;

  MyCard({required this.content, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          width: double.infinity,
          height: 70,
          child: Card(
            color: Colors.white,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                    right: 30.0,
                  ),
                  child: icon,
                ),
                Text(
                  content,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
