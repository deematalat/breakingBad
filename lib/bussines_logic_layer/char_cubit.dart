import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import '../data_layer/model/characters.dart';
import '../data_layer/repository/characters_repository.dart';
part 'char_state.dart';

class CharCubit extends Cubit<CharState> {
  CharactersRepository charactersRepository;
   late List<Character> char;
  CharCubit(this.charactersRepository) : super(CharInitial());

  List<Character> getAllCharacters() {
    charactersRepository.getAllCharacters().then(
          (characters) {emit(AllCharLoaded(characters));
              this.char=characters;
          }
        );
    return char;
  }
  void getQuotes(String charName) {
    charactersRepository.getCharacterQuotes(charName).then((quotes) {
      emit(QuotesLoaded(quotes));
    });
  }
}
