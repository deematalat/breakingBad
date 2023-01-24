import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/bussines_logic_layer/char_cubit.dart';
import 'package:untitled1/helper/app_router.dart';
import 'package:untitled1/presntetion_layer/screens/characters_screens.dart';

import 'data_layer/repository/characters_repository.dart';
import 'data_layer/web_services/characters_web_servises.dart';

void main() {

  runApp( MyApp(appRouter:AppRouter(), ));
}

class MyApp extends StatelessWidget {
    final  AppRouter appRouter;

  const MyApp({Key? key,required this.appRouter }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late CharactersRepository charactersRepository;
    charactersRepository = CharactersRepository(CharactersWebServises());
   return BlocProvider<CharCubit>(
        create: (context) => CharCubit(charactersRepository),
        child: BlocConsumer< CharCubit,CharState>(
             listener: (context, state) =>{} ,
          builder:  (context, state) =>
            MaterialApp(
              home: CharactersScreen(),
              debugShowCheckedModeBanner: false,
              onGenerateRoute:appRouter.generateRoute,
            )
           ,
        ),

    );

  }
}
