// ignore_for_file: must_be_immutable

part of 'language_bloc.dart';

class LanguageState extends Equatable {
  LanguageState({
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.languageModelObj,
  });

  LanguageModel? languageModelObj;

  String radioGroup;

  String radioGroup1;

  @override
  List<Object?> get props => [
        radioGroup,
        radioGroup1,
        languageModelObj,
      ];
  LanguageState copyWith({
    String? radioGroup,
    String? radioGroup1,
    LanguageModel? languageModelObj,
  }) {
    return LanguageState(
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      languageModelObj: languageModelObj ?? this.languageModelObj,
    );
  }
}
