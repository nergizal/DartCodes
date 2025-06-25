import 'package:flutter/material.dart';

class UlkeCard extends StatefulWidget {
  final int index;
  final String ulkeAdi;
  const UlkeCard({required this.index, required this.ulkeAdi});

  @override
  State<UlkeCard> createState() =>
   _UlkeCardState();
}

class _UlkeCardState extends State<UlkeCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 12),
      child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: widget.index %2==0 ? Colors.pink:
              Colors.purple,
            ),
        alignment: Alignment.center,
        height: 100,

      child: ListTile(
            title: Text(widget.ulkeAdi),
            leading: CircleAvatar(
              child: Text((widget.index+1).toString()),
            ),
            trailing: Icon(Icons.arrow_right),
      ),
            ),
    );
  }
}