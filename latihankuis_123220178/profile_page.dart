import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String username;
  final String nickname;
  final String nim;
  final String kerja;
  final String organisasi;
  final String hards;
  final String softs;
  final String capai;

  const ProfilePage(
      {super.key,
      required this.username,
      required this.nickname,
      required this.nim,
      required this.kerja,
      required this.organisasi,
      required this.hards,
      required this.softs,
      required this.capai});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profil"),
        backgroundColor: const Color.fromARGB(255, 44, 139, 138),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(26.0),
        child: ListView(
          children: [
            Center(
              child: CircleAvatar(
                  radius: 50,
                  backgroundColor: const Color.fromARGB(255, 44, 139, 138)),
            ),
            const SizedBox(height: 16),

            // Menampilkan Profil
            ProfileItem(
                title: 'Nama',
                value: nickname.isNotEmpty ? nickname : username),

            ProfileItem(title: 'NIM', value: nim),

            ProfileItem(title: 'Pengalaman Kerja', value: kerja),

            ProfileItem(title: 'Pengalaman Organisasi', value: organisasi),

            ProfileItem(title: 'Hard Skill', value: hards),

            ProfileItem(title: 'Soft Skill', value: softs),

            ProfileItem(title: 'Pencapaian', value: capai),
            const SizedBox(height: 20),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Kembali ke HomePage
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 44, 139, 138),
                  foregroundColor: Colors.white,
                ),
                child: const Text("Kembali"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget untuk Menampilkan Informasi pada Profil
class ProfileItem extends StatelessWidget {
  final String title;
  final String value;

  const ProfileItem({required this.title, required this.value, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 44, 139, 138),
      child: ListTile(
        title: Text(title,
            style: const TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white)),
        subtitle: Text(value),
      ),
    );
  }
}
