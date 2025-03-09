import 'package:flutter/material.dart';
import 'package:latihankuis_123220178/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.username});
  final String username;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController nameControler =
      TextEditingController(); // nama lengkap
  final TextEditingController nimControler = TextEditingController(); // nim
  final TextEditingController jobControler =
      TextEditingController(); // pengalaman kerja
  final TextEditingController orgControler =
      TextEditingController(); // pengalaman organisasi
  final TextEditingController hardControler =
      TextEditingController(); // hard skill
  final TextEditingController softControler =
      TextEditingController(); // soft skill
  final TextEditingController achieveControler =
      TextEditingController(); // pencapaian/penghargaan

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
              'Selamat Datang ${widget.username}'),
          backgroundColor: const Color.fromARGB(255, 44, 139, 138),
          foregroundColor: Colors.white),
            body: Padding(
              padding: const EdgeInsets.all(26.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    
                    // Nama Lengkap
                    TextField(
                      controller: nameControler,
                      decoration: InputDecoration(
                      labelText: 'Nama Lengkap', border: OutlineInputBorder()),
                    ),

                    // NIM
                    TextField(
                      controller: nimControler,
                      decoration: InputDecoration(
                      labelText: 'NIM', border: OutlineInputBorder()),
                    ),

                    // Pengalaman Kerja
                    TextField(
                      controller: jobControler,
                      decoration: InputDecoration(
                      labelText: 'Pengalaman Kerja',
                      border: OutlineInputBorder()),
                    ),

                    // Pengalaman Organisasi
                    TextField(
                      controller: orgControler,
                      decoration: InputDecoration(
                      labelText: 'Pengalaman Organisasi',
                      border: OutlineInputBorder()),
                    ),

                    // Hard Skill
                    TextField(
                      controller: hardControler,
                      decoration: InputDecoration(
                      labelText: 'Hard Skill', 
                      border: OutlineInputBorder()),
                    ),

                    // Soft Skill
                    TextField(
                      controller: softControler,
                      decoration: InputDecoration(
                      labelText: 'Soft Skill', 
                      border: OutlineInputBorder()),
                    ),

                    // Pencapaian/Penghargaan
                    TextField(
                      controller: achieveControler,
                      decoration: InputDecoration(
                      labelText: 'Pencapaian/Penghargaan',
                      border: OutlineInputBorder()),
                    ),

                    CustomButton(
                      text: 'Lihat Profil',
                      onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProfilePage(
                            username: widget.username,
                            nickname: nameControler.text,
                            nim: nimControler.text,
                            kerja: jobControler.text,
                            organisasi: orgControler.text,
                            hards: hardControler.text,
                            softs: softControler.text,
                            capai: achieveControler.text
                          ),
                        ),
                      );
                      },
                    ),
                  ],
                  ),
                ),
            ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({required this.text, 
                      required this.onPressed, 
                      Key? key}): 
                      super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 44, 139, 138),
          foregroundColor: Colors.white,
        ),
        child: Text(text),
      ),
    );
  }
}