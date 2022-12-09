import 'package:flutter/material.dart';
import 'package:gains_mobile/screens/home_screen.dart';

// screens
import '../logs/logs_screen.dart';
import '../profile/profile_screen.dart';
import '../tools/tools_screen.dart';
import '../settings/settings_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _showPassword = false;

  bool _loading = false;

  String email = '';

  String password = '';

  void _togglePasswordVisibility() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  void _toggleLoading() {
    setState(() {
      _loading = !_loading;
    });
  }

  void _login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround, // <-- alignments
            children: <Widget>[
              Wrap(
                runSpacing: 15, // flex-gap
                children: <Widget>[
                  // ******************** EMAIL ********************
                  TextFormField(
                    decoration: const InputDecoration(
                      // labelText: "Email",
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          // borderRadius: BorderRadius.zero,
                          // borderSide:
                          //     BorderSide(color: Color(0xFF707070), width: .5),
                          ),
                      enabledBorder: OutlineInputBorder(
                        // borderRadius: BorderRadius.zero,
                        borderSide:
                            BorderSide(color: Color(0xFF707070), width: .5),
                      ),
                      focusedBorder: OutlineInputBorder(
                          // borderRadius: BorderRadius.zero,
                          // borderSide:
                          //     BorderSide(color: Color(0xFF707070), width: .5),
                          ),
                      errorBorder: OutlineInputBorder(
                        // borderRadius: BorderRadius.zero,
                        borderSide: BorderSide(color: Colors.red, width: .5),
                      ),
                    ),
                  ),
                  // ******************** PASSWORD ********************
                  TextFormField(
                    obscureText: !_showPassword,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        // borderRadius: BorderRadius.zero,
                        borderSide:
                            BorderSide(color: Color(0xFF707070), width: .5),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        // borderRadius: BorderRadius.zero,
                        borderSide:
                            BorderSide(color: Color(0xFF707070), width: .5),
                      ),
                      focusedBorder: const OutlineInputBorder(
                          // borderRadius: BorderRadius.zero,
                          // borderSide:
                          //     BorderSide(color: Color(0xFF707070), width: .5),
                          ),
                      errorBorder: const OutlineInputBorder(
                        // borderRadius: BorderRadius.zero,
                        borderSide: BorderSide(color: Colors.red, width: .5),
                      ),
                      // labelText: "Password",
                      hintText: 'Password',
                      suffixIcon: IconButton(
                        onPressed: _togglePasswordVisibility,
                        icon: Icon(
                          _showPassword
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ),
                  // ******************** BUTTON ********************
                  Container(
                    height: 55,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      child: const Text('Login'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
