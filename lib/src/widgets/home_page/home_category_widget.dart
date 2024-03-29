import 'dart:io';

import 'package:bettycook/src/config.dart';
import 'package:bettycook/src/pages/category_page.dart';
import 'package:bettycookplugins/bettycookplugins.dart';
import 'package:flutter/material.dart';
import 'package:bettycook/src/extensions/extensions.dart';
import 'package:path/path.dart';

class HomeCategoryWidget extends StatelessWidget {
  final CategoryHive category;
  const HomeCategoryWidget({required this.category, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: this.category.key == 1
            ? const EdgeInsets.only(right: 8.0)
            : const EdgeInsets.only(left: 8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushNamed(CategoryPage.routeName, arguments: category);
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 4,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: FileImage(File(
                    join(hiveDB.settingsBoxBase.get(settingsBoxAppDirKey),
                        "categories", this.category.name),
                  )),
                  fit: BoxFit.cover,
                ),
              ),
              alignment: Alignment.bottomLeft,
              child: Container(
                color: Colors.black.withOpacity(0.35),
                child: ListTile(
                  title: Text(
                    this.category.name.inCaps,
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
      ),
    );
  }
}
