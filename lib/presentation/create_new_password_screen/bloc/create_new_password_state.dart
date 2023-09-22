// ignore_for_file: must_be_immutable

part of 'create_new_password_bloc.dart';

class CreateNewPasswordState extends Equatable {
  CreateNewPasswordState({
    this.statusFillTypePasswordController,
    this.statusFillTypePasswordOneController,
    this.createNewPasswordModelObj,
  });

  TextEditingController? statusFillTypePasswordController;

  TextEditingController? statusFillTypePasswordOneController;

  CreateNewPasswordModel? createNewPasswordModelObj;

  @override
  List<Object?> get props => [
        statusFillTypePasswordController,
        statusFillTypePasswordOneController,
        createNewPasswordModelObj,
      ];
  CreateNewPasswordState copyWith({
    TextEditingController? statusFillTypePasswordController,
    TextEditingController? statusFillTypePasswordOneController,
    CreateNewPasswordModel? createNewPasswordModelObj,
  }) {
    return CreateNewPasswordState(
      statusFillTypePasswordController: statusFillTypePasswordController ??
          this.statusFillTypePasswordController,
      statusFillTypePasswordOneController:
          statusFillTypePasswordOneController ??
              this.statusFillTypePasswordOneController,
      createNewPasswordModelObj:
          createNewPasswordModelObj ?? this.createNewPasswordModelObj,
    );
  }
}
