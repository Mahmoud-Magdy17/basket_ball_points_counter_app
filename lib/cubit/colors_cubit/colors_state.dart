part of 'colors_cubit.dart';

@immutable
sealed class ColorsState {}

final class ColorsInitial extends ColorsState {}

final class ChangeColorDone extends ColorsState {}
