import 'package:flutter/material.dart';

class SettingExpansionMenu extends StatefulWidget {
  const SettingExpansionMenu({super.key});

  @override
  State<SettingExpansionMenu> createState() => _SettingExpansionMenuState();
}

class _SettingExpansionMenuState extends State<SettingExpansionMenu> {
  //ayarları kontrol eden değişkenler
  bool notificationsEnabled = true;
  bool darkMode = false;
  bool fingerPrintEnabled = false;
  bool autoSync = true;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ExpansionTile(
          title: Text("Bildirimler"),
          leading: Icon(Icons.notifications),
          children: [
            SwitchListTile(
              title: Text("Bildirimleri Aç"),
              value: notificationsEnabled,
              onChanged: (value) {
                setState(() {
                  notificationsEnabled = value;
                });
              },
            ),

            SwitchListTile(
              title: Text("Otomatik Senkronizasyon"),
              value: autoSync,
              onChanged: (value) {
                setState(() {
                  autoSync = value;
                });
              },
            ),
          ],
        ),

        ExpansionTile(
          title: Text("Tema"),
          leading: Icon(Icons.color_lens),
          children: [
            SwitchListTile(
              title: Text("Karanlık Mod"),
              value: darkMode,
              onChanged: (value) {
                setState(() {
                  darkMode = value;
                });
              },
            ),
          ],
        ),

        ExpansionTile(
          title: Text("Güvenlik"),
          leading: Icon(Icons.security),
          children: [
            SwitchListTile(
              title: Text("Parmak izi ile Giriş"),
              value: fingerPrintEnabled,
              onChanged: (value) {
                setState(() {
                  fingerPrintEnabled = value;
                });
              },
            ),
          ],
        ),
      ],
    );
  }
}
