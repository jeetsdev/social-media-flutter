// ignore_for_file: must_be_immutable

part of 'fill_your_profile_blank_form_bloc.dart';

class FillYourProfileBlankFormState extends Equatable {
  FillYourProfileBlankFormState({
    this.statusDefaultController,
    this.statusDefaultOneController,
    this.statusDefaultTwoController,
    this.phoneNumberController,
    this.statusDefaultThreeController,
    this.selectedCountry,
    this.fillYourProfileBlankFormModelObj,
  });

  TextEditingController? statusDefaultController;

  TextEditingController? statusDefaultOneController;

  TextEditingController? statusDefaultTwoController;

  TextEditingController? phoneNumberController;

  TextEditingController? statusDefaultThreeController;

  FillYourProfileBlankFormModel? fillYourProfileBlankFormModelObj;

  Country? selectedCountry;

  @override
  List<Object?> get props => [
        statusDefaultController,
        statusDefaultOneController,
        statusDefaultTwoController,
        phoneNumberController,
        statusDefaultThreeController,
        selectedCountry,
        fillYourProfileBlankFormModelObj,
      ];
  FillYourProfileBlankFormState copyWith({
    TextEditingController? statusDefaultController,
    TextEditingController? statusDefaultOneController,
    TextEditingController? statusDefaultTwoController,
    TextEditingController? phoneNumberController,
    TextEditingController? statusDefaultThreeController,
    Country? selectedCountry,
    FillYourProfileBlankFormModel? fillYourProfileBlankFormModelObj,
  }) {
    return FillYourProfileBlankFormState(
      statusDefaultController:
          statusDefaultController ?? this.statusDefaultController,
      statusDefaultOneController:
          statusDefaultOneController ?? this.statusDefaultOneController,
      statusDefaultTwoController:
          statusDefaultTwoController ?? this.statusDefaultTwoController,
      phoneNumberController:
          phoneNumberController ?? this.phoneNumberController,
      statusDefaultThreeController:
          statusDefaultThreeController ?? this.statusDefaultThreeController,
      selectedCountry: selectedCountry ?? this.selectedCountry,
      fillYourProfileBlankFormModelObj: fillYourProfileBlankFormModelObj ??
          this.fillYourProfileBlankFormModelObj,
    );
  }
}
