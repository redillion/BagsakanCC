import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import 'input_card_list_sim_widget.dart' show InputCardListSimWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InputCardListSimModel extends FlutterFlowModel<InputCardListSimWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField_Course1 widget.
  FocusNode? textFieldCourse1FocusNode;
  TextEditingController? textFieldCourse1TextController;
  String? Function(BuildContext, String?)?
      textFieldCourse1TextControllerValidator;
  // State field(s) for TextField_Course2 widget.
  FocusNode? textFieldCourse2FocusNode;
  TextEditingController? textFieldCourse2TextController;
  String? Function(BuildContext, String?)?
      textFieldCourse2TextControllerValidator;
  // State field(s) for TextField_Unit1 widget.
  FocusNode? textFieldUnit1FocusNode;
  TextEditingController? textFieldUnit1TextController;
  String? Function(BuildContext, String?)?
      textFieldUnit1TextControllerValidator;
  // State field(s) for TextField_Grade1 widget.
  FocusNode? textFieldGrade1FocusNode;
  TextEditingController? textFieldGrade1TextController;
  String? Function(BuildContext, String?)?
      textFieldGrade1TextControllerValidator;
  // State field(s) for TextField_Unit2 widget.
  FocusNode? textFieldUnit2FocusNode;
  TextEditingController? textFieldUnit2TextController;
  String? Function(BuildContext, String?)?
      textFieldUnit2TextControllerValidator;
  // State field(s) for TextField_Grade2 widget.
  FocusNode? textFieldGrade2FocusNode;
  TextEditingController? textFieldGrade2TextController;
  String? Function(BuildContext, String?)?
      textFieldGrade2TextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldCourse1FocusNode?.dispose();
    textFieldCourse1TextController?.dispose();

    textFieldCourse2FocusNode?.dispose();
    textFieldCourse2TextController?.dispose();

    textFieldUnit1FocusNode?.dispose();
    textFieldUnit1TextController?.dispose();

    textFieldGrade1FocusNode?.dispose();
    textFieldGrade1TextController?.dispose();

    textFieldUnit2FocusNode?.dispose();
    textFieldUnit2TextController?.dispose();

    textFieldGrade2FocusNode?.dispose();
    textFieldGrade2TextController?.dispose();
  }
}
