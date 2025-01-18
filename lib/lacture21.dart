import 'dart:io';

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Lacture21 extends StatefulWidget {
  const Lacture21({super.key});

  @override
  State<Lacture21> createState() => _Lacture21State();
}

class _Lacture21State extends State<Lacture21> {
  final ImagePicker picker = ImagePicker();
  File? _imgFile;

  void takeSnapshot() async {
    final XFile? img = await picker.pickImage(
      source: ImageSource.gallery, // alternatively, use ImageSource.gallery
      // maxWidth: 400,
    );
    if (img == null) return;
    setState(() {
      _imgFile = File(img.path); // convert it to a Dart:io file
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        children: [
          InkWell(
            onTap: () {
              showCountryPicker(
                context: context,
                //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
                exclude: <String>['KN', 'MF'],
                favorite: <String>['SE'],
                //Optional. Shows phone code before the country name.
                showPhoneCode: true,
                onSelect: (Country country) {
                  print('Select country: ${country.displayName}');
                },
                // Optional. Sheet moves when keyboard opens.
                moveAlongWithKeyboard: false,
                // Optional. Sets the theme for the country list picker.
                countryListTheme: CountryListThemeData(
                  // Optional. Sets the border radius for the bottomsheet.
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                  // Optional. Styles the search field.
                  inputDecoration: InputDecoration(
                    labelText: 'Search',
                    hintText: 'Start typing to search',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: const Color(0xFF8C98A8).withOpacity(0.2),
                      ),
                    ),
                  ),
                  // Optional. Styles the text in the search field
                  searchTextStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                ),
              );
            },
            child: Container(
              height: 50,
              width: double.infinity,
              color: Colors.red,
              child: Center(child: Text("Picker")),
            ),
          ),
          InkWell(
            onTap: () async {
              takeSnapshot();
            },
            child: Container(
              height: 50,
              width: 300,
              color: Colors.yellow,
              child: Center(child: Text('pick Images')),
            ),
          ),
          CircleAvatar(
            radius: 32,
            backgroundImage: (_imgFile == null)
                ? AssetImage('images/bed 1.png')
                : FileImage(_imgFile!),
          ),
        ],
      ),
    );
  }
}
