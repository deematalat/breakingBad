part of 'char_cubit.dart';

@immutable
abstract class CharState {}

class CharInitial extends CharState {}

class AllCharLoaded extends CharState {
  final List<Character> characters;
  AllCharLoaded(this.characters);
}

class QuotesLoaded extends CharState  {
  final List<Quote> quotes;

  QuotesLoaded(this.quotes);
}