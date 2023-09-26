import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextFormField(
            style: GoogleFonts.nunito(fontSize: 14),
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
