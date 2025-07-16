import 'package:flutter/material.dart';
import '../model/user_model.dart';

class UserDetailPage extends StatelessWidget {
  final Usermodel user;

  const UserDetailPage({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${user.name} Detay"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Kullanıcı Adı"),
              subtitle: Text(user.username),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text(user.email),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text("Telefon"),
              subtitle: Text(user.phone),
            ),
            ListTile(
              leading: Icon(Icons.web),
              title: Text("Web Sitesi"),
              subtitle: Text(user.website),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Adres"),
              subtitle: Text(
                "${user.address.street}, ${user.address.suite}, ${user.address.city}, ${user.address.zipcode}",
              ),
            ),
            ListTile(
              leading: Icon(Icons.location_on),
              title: Text("Koordinatlar"),
              subtitle: Text(
                "Lat: ${user.address.geo.lat}, Lng: ${user.address.geo.lng}",
              ),
            ),
            ListTile(
              leading: Icon(Icons.business),
              title: Text("Şirket"),
              subtitle: Text(
                "${user.company.name}\n${user.company.catchPhrase}\n${user.company.bs}",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
