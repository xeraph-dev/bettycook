import 'package:flutter/material.dart';

class HomeFavoriteWidget extends StatelessWidget {
  const HomeFavoriteWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          elevation: 8,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/default.png"),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.bottomLeft,
            child: Container(
              color: Colors.black.withOpacity(0.35),
              child: ListTile(
                title: Text(
                  "Favorito random",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
