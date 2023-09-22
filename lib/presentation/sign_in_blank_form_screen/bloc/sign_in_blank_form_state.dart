// ignore_for_file: must_be_immutable

part of 'sign_in_blank_form_bloc.dart';

class SignInBlankFormState extends Equatable {
  SignInBlankFormState({
    this.statusDefaultController,
    this.statusDefaultOneController,
    this.isShowPassword = true,
    this.isCheckbox = false,
    this.signInBlankFormModelObj,
  });

  TextEditingController? statusDefaultController;

  TextEditingController? statusDefaultOneController;

  SignInBlankFormModel? signInBlankFormModelObj;

  bool isShowPassword;

  bool isCheckbox;

  @override
  List<Object?> get props => [
        statusDefaultController,
        statusDefaultOneController,
        isShowPassword,
        isCheckbox,
        signInBlankFormModelObj,
      ];
  SignInBlankFormState copyWith({
    TextEditingController? statusDefaultController,
    TextEditingController? statusDefaultOneController,
    bool? isShowPassword,
    bool? isCheckbox,
    SignInBlankFormModel? signInBlankFormModelObj,
  }) {
    return SignInBlankFormState(
      statusDefaultController:
          statusDefaultController ?? this.statusDefaultController,
      statusDefaultOneController:
          statusDefaultOneController ?? this.statusDefaultOneController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isCheckbox: isCheckbox ?? this.isCheckbox,
      signInBlankFormModelObj:
          signInBlankFormModelObj ?? this.signInBlankFormModelObj,
    );
  }
}
