import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktik/config/theme/app_theme.dart';
import 'package:toktik/infraestructure/datasources/local_video_datasource_imp.dart';
import 'package:toktik/infraestructure/repositories/video_post_repository_imp.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';
import 'package:toktik/presentation/screens/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRepository =
        VideoPostsRepositoryImp(videoDataSource: LocalVideoDataSource());

    return MultiProvider(
      providers: [
        //el .. es un operador de cascada
        ChangeNotifierProvider(
          lazy: false, //A
          create: (_) => DiscoverProvider(videosRepository: videoPostRepository)..loadNextPage(),
        )
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
// el .. es un operador de cascada, el cual le indica que una vez creada la instancia, podemos accesar al metodo

// En esta linea 
  // final videoPostRepository =
  //       VideoPostsRepositoryImp(videoDataSource: LocalVideoDataSource());
// y le asignamos el repositorio que queremos usar, para poder pasarlo al provider,
// y este solamente le pida los datos

//de tal forma que si cambiamos el origen de datos, solo bastara con cambiarle el datasource
//al resositorio. =) 

