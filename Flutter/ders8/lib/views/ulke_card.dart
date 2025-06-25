import 'package:flutter/material.dart';

class UlkeCard extends StatefulWidget {
  const UlkeCard({super.key});

  @override
  State<UlkeCard> createState() => _UlkeCardState();
}

class _UlkeCardState extends State<UlkeCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(vertical: 8,horizontal: 12),
    child: Container(
      decoration: BoxDecoration(),
    ),
    
    );
  }
}