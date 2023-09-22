import 'package:equatable/equatable.dart';import 'package:flutter/material.dart';import '/core/app_export.dart';import 'package:ranjeet_social_media/presentation/report_screen/models/report_model.dart';part 'report_event.dart';part 'report_state.dart';class ReportBloc extends Bloc<ReportEvent, ReportState> {ReportBloc(ReportState initialState) : super(initialState) { on<ReportInitialEvent>(_onInitialize); on<ChangeRadioButtonEvent>(_changeRadioButton); }

_changeRadioButton(ChangeRadioButtonEvent event, Emitter<ReportState> emit, ) { emit(state.copyWith(radioGroup: event.value)); } 
List<String> fillRadioList() { return ["msg_violent_graph", "lbl_animal_cruelty", "msg_pornography_n", "lbl_hate_speech", "msg_harassment_or_bullying", "msg_intellectual_property", "lbl_spam", "lbl_minor_safety", "lbl_other"]; } 
_onInitialize(ReportInitialEvent event, Emitter<ReportState> emit, ) async  { emit(state.copyWith(radioGroup: "")); emit(state.copyWith(reportModelObj: state.reportModelObj?.copyWith(radioList: fillRadioList()))); } 
 }
