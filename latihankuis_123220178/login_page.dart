import 'package:flutter/material.dart';
import 'package:latihankuis_123220178/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final username = TextEditingController();
  final nickname = TextEditingController();
  final password = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  bool isLogin = false;

  @override
  void dispose() {
    username.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
                title: Text('Login Page'),
                backgroundColor: const Color.fromARGB(255, 44, 139, 138),
                foregroundColor: Colors.white),
            body: Form(
                key: _formkey,
                child: Center(
                  child: Padding(
                      padding: const EdgeInsets.all(26.0),
                      child: SizedBox(
                        height: 300,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Selamat Datang',
                              style: TextStyle(fontSize: 30),
                            ),
                            // Username
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Username Tidak Boleh Kosong!';
                                }
                                return null;
                              },
                              controller: username,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Username'),
                            ),

                            // Nama Panggilan
                            TextFormField(
                              controller: nickname,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Nama Panggilan'),
                            ),

                            // Password
                            TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Password Tidak Boleh Kosong!';
                                }
                                return null;
                              },
                              controller: password,
                              obscureText: true,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Password'),
                            ),
                            SizedBox(
                                width: 120,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_formkey.currentState!.validate()) {
                                      if (username.text.trim() == 'Salsaa' &&
                                          password.text.trim() == '1234') {
                                        // SnackBar jika Login Berhasil
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                              content: Text('Login Berhasil')),
                                        );
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return HomePage(
                                                username: username.text,
                                              );
                                            },
                                          ),
                                        );
                                      }
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color.fromARGB(
                                          255, 44, 139, 138),
                                      foregroundColor: Colors.white),
                                  child: Text('Login'),
                                )),
                            if (isLogin) Text('Login Berhasil!'),
                          ],
                        ),
                      )),
                ))));
  }
}
