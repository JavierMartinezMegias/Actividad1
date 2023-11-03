import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:seneca/presentation/provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LoginScreen();
}


class _LoginScreen extends State<LoginScreen> {

  bool viewPassword = true;
  TextEditingController passwordController = TextEditingController();
  TextEditingController userController = TextEditingController();

  @override
  Widget build(BuildContext context) {
   
   final provider = context.watch<AppProvider>();
    return Scaffold(
        
        backgroundColor: const Color.fromARGB(255, 46, 46, 46),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              const SizedBox(height: 100,),
              const Text("LOGIN PAGE",style: TextStyle(fontSize: 60,color: Colors.white),),
            
              const SizedBox(height: 20.0),
              TextField(
                cursorColor: Colors.white,
                controller: userController,             
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.17),
                  hintText: 'Usuario',
                  hintStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        style: BorderStyle.solid, color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        style: BorderStyle.solid,
                        color: Color.fromRGBO(255, 255, 255, 1),
                        width: 2),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
              const SizedBox(height: 20.0),
              TextField(
                cursorColor: Colors.white,
                controller: passwordController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.17),
                  suffixIcon: SizedBox(
                    width: 60,
                    child: IconButton(
                        color: Colors.white,
                        onPressed: () {
                          setState(() {
                            viewPassword = !viewPassword;
                          });
                        },
                        icon: const Icon(Icons.visibility_outlined)),
                  ),
                  hintText: 'Contraseña',
                  hintStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        style: BorderStyle.solid, color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                        style: BorderStyle.solid, color: Colors.white, width: 2),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                obscureText: viewPassword,
              ),
              const SizedBox(height: 20.0),
              SizedBox(
                width: 400,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    if(provider.compruebaLogin(userController.text, passwordController.text)){
                      context.goNamed("home");
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  child: const Text(
                    'Entrar',
                    style: TextStyle(
                        color: Color.fromARGB(255, 58, 59, 59),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ),
             
              
            ]),
          ),
        ));
  }
}
