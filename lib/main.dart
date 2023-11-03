import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:seneca/config/router.dart';
import 'package:seneca/presentation/provider/provider.dart';

void main() => runApp(const Seneca());

class Seneca extends StatelessWidget {
  const Seneca({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AppProvider()),
      ],
      child: MaterialApp.router(
        routerConfig: appRouter,
        debugShowCheckedModeBanner: false,
        title: 'Seneca',
      ),
    ); 
  }
}