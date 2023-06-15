import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/config/theme/app_theme.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [    //el .. es un operador de cascada
        ChangeNotifierProvider(
          lazy: false, //A
          create: (_) => DiscoverProvider()..loadNextPage(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        title: 'Tok Tik',
        home: const DiscoverScreen(),
      ),
    );
  }
}

//A, le indica que el constructor del provider se va a lanzar inmediantamente en el create
//del provider y no hasta que se utilize en algun widget