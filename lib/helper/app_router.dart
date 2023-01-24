import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/bussines_logic_layer/char_cubit.dart';
import 'package:untitled1/data_layer/repository/characters_repository.dart';
import 'package:untitled1/data_layer/web_services/characters_web_servises.dart';
import 'package:untitled1/presntetion_layer/screens/characters_detils.dart';
import 'package:untitled1/presntetion_layer/screens/characters_screens.dart';

import '../conestant/string.dart';
import '../data_layer/model/characters.dart';


class AppRouter {
  late CharactersRepository charactersRepository;
  late CharCubit charCubit;
  AppRouter() {
    charactersRepository = CharactersRepository(CharactersWebServises());
    charCubit = CharCubit(charactersRepository);
  }
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      /*case charactersScreen :
        return   /MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext  context) => CharCubit(charactersRepository),
            child: CharactersScreen(),
          ),
        );
*/



      case  charactoreDetilsSceens:
        final character = settings.arguments as Character;

        return   MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) =>CharCubit(charactersRepository),
            child: CharacterDetailsScreen(
              character: character,
            ),
          ),
        );
    }
  }
}
