import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:slicing_page/pages/home.dart';
import 'package:slicing_page/text_form.dart';
import 'package:slicing_page/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(statusBarColor: primaryColor),
        child: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
              child: Column(
                children: [
                  const Text(
                    "Welcome",
                    style: TextStyle(color: secondaryColor, fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const Text(
                    "POD System",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .15,
                  ),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Email",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      )),
                  const SizedBox(height: 12),
                  const CustomTextForm(
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 28),
                  const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password",
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                      )),
                  const SizedBox(height: 12),
                  const CustomTextForm(
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  const SizedBox(height: 8),
                  const Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot password",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .1,
                  ),
                  MaterialButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) {
                        return const HomePage();
                      }));
                    },
                    color: secondaryColor,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    child: const Center(
                      child: Text(
                        "Sign in",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(color: Colors.grey.shade600),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      const Text(
                        "Sign up",
                        style: TextStyle(color: secondaryColor, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
