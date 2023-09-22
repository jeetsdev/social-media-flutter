// ignore_for_file: must_be_immutable

part of 'sign_up_blank_form_bloc.dart';

class SignUpBlankFormState extends Equatable {
  SignUpBlankFormState({
    this.statusDefaultController,
    this.statusDefaultOneController,
    this.isShowPassword = true,
    this.isCheckbox = false,
    this.signUpBlankFormModelObj,
  });

  TextEditingController? statusDefaultController;

  TextEditingController? statusDefaultOneController;

  SignUpBlankFormModel? signUpBlankFormModelObj;

  bool isShowPassword;

  bool isCheckbox;

  @override
  List<Object?> get props => [
        statusDefaultController,
        statusDefaultOneController,
        isShowPassword,
        isCheckbox,
        signUpBlankFormModelObj,
      ];
  SignUpBlankFormState copyWith({
    TextEditingController? statusDefaultController,
    TextEditingController? statusDefaultOneController,
    bool? isShowPassword,
    bool? isCheckbox,
    SignUpBlankFormModel? signUpBlankFormModelObj,
  }) {
    return SignUpBlankFormState(
      statusDefaultController:
          statusDefaultController ?? this.statusDefaultController,
      statusDefaultOneController:
          statusDefaultOneController ?? this.statusDefaultOneController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isCheckbox: isCheckbox ?? this.isCheckbox,
      signUpBlankFormModelObj:
          signUpBlankFormModelObj ?? this.signUpBlankFormModelObj,
    );
  }
}
