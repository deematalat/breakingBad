
import '../model/characters.dart';
import '../web_services/characters_web_servises.dart';

class CharactersRepository {
  final CharactersWebServises charactersWebServises;

  CharactersRepository(this.charactersWebServises);

  Future<List<Character
  >> getAllCharacters()async{
    final Characters =await charactersWebServises.getAllCharacters();
    return Characters.map((character) =>Character.fromJson(character)).toList();

  }
  Future<List<Quote>> getCharacterQuotes(String charName) async {
    final quotes = await charactersWebServises.getCharacterQuotes(charName);
    return quotes.map((charQuotes) => Quote.fromJson(charQuotes)).toList();
  }
}

