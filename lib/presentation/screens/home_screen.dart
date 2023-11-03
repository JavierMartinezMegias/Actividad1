import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:seneca/presentation/provider/provider.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<AppProvider>();
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 54, 54, 54),
        appBar: AppBar(
          title: const Text('Material App Bar'),
          
          actions: [
            IconButton(
              onPressed: () {
                context.goNamed('login');
              },
              icon: const Icon(Icons.close))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column( children: [
                
               Text('Name :  ${provider.user}',style: const TextStyle(fontSize: 40,color: Colors.white),),
               Text('Password :  ${provider.cont}',style: const TextStyle(fontSize: 40,color: Colors.white),),
          ],),
        )
          
    );
  }
}