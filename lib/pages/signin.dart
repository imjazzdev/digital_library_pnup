import 'package:digital_library_pnup/pages/home.dart';
import 'package:digital_library_pnup/pages/model/main_navigator.dart';
import 'package:digital_library_pnup/utils/colors.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isvisiblity = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSelect.secondaryButtonColor,
      body: Container(
        height: MediaQuery.of(context).size.height * 0.9,
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Image.asset('assets/img/digital-library 1.png'),
            const Text(
              'Nim',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorSelect.tertiaryTextColor),
              padding: const EdgeInsets.only(left: 15, right: 10),
              child: const TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: 'masukan nim anda'),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Password',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: ColorSelect.tertiaryTextColor),
              padding: const EdgeInsets.only(left: 15, right: 10),
              child: TextField(
                obscureText: _isvisiblity,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isvisiblity = !_isvisiblity;
                          });
                        },
                        icon: _isvisiblity
                            ? const Icon(Icons.visibility)
                            : const Icon(Icons.visibility_off)),
                    hintText: 'masukan password anda'),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Align(
              child: SizedBox(
                height: 45,
                width: 150,
                child: InkWell(
                  onTap: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainNavigator(),
                        ),
                        (route) => false);
                  },
                  child: Material(
                    color: ColorSelect.tertiaryTextColor,
                    borderRadius: BorderRadius.circular(15),
                    child: const Center(
                      child: Text(
                        'Log In',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
