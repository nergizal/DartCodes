import 'package:flutter/material.dart';
//20-06

class FadeinimageKullanimi extends StatefulWidget {
  const FadeinimageKullanimi({super.key});

  @override
  State<FadeinimageKullanimi> createState() => _FadeinimageKullanimiState();
}

class _FadeinimageKullanimiState extends State<FadeinimageKullanimi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fadein Image Kullanımı"),
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
      ),
      body:  Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FadeInImage.assetNetwork(
            placeholder: "resimler/place.jpg", 
            image: "https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500")
        ],
      ),
    ),
    );
  }
}