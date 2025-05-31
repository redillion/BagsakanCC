import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'input_card_list_widget.dart' show InputCardListWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InputCardListModel extends FlutterFlowModel<InputCardListWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField_Course1 widget.
  FocusNode? textFieldCourse1FocusNode1;
  TextEditingController? textFieldCourse1TextController1;
  String? Function(BuildContext, String?)?
      textFieldCourse1TextController1Validator;
  // State field(s) for TextField_Unit1 widget.
  FocusNode? textFieldUnit1FocusNode1;
  TextEditingController? textFieldUnit1TextController1;
  String? Function(BuildContext, String?)?
      textFieldUnit1TextController1Validator;
  // State field(s) for TextField_Grade1 widget.
  FocusNode? textFieldGrade1FocusNode1;
  TextEditingController? textFieldGrade1TextController1;
  String? Function(BuildContext, String?)?
      textFieldGrade1TextController1Validator;
  // State field(s) for TextField_Course2 widget.
  FocusNode? textFieldCourse2FocusNode;
  TextEditingController? textFieldCourse2TextController;
  String? Function(BuildContext, String?)?
      textFieldCourse2TextControllerValidator;
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
  // State field(s) for TextField_Course1 widget.
  FocusNode? textFieldCourse1FocusNode2;
  TextEditingController? textFieldCourse1TextController2;
  String? Function(BuildContext, String?)?
      textFieldCourse1TextController2Validator;
  // State field(s) for TextField_Unit1 widget.
  FocusNode? textFieldUnit1FocusNode2;
  TextEditingController? textFieldUnit1TextController2;
  String? Function(BuildContext, String?)?
      textFieldUnit1TextController2Validator;
  // State field(s) for TextField_Grade1 widget.
  FocusNode? textFieldGrade1FocusNode2;
  TextEditingController? textFieldGrade1TextController2;
  String? Function(BuildContext, String?)?
      textFieldGrade1TextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldCourse1FocusNode1?.dispose();
    textFieldCourse1TextController1?.dispose();

    textFieldUnit1FocusNode1?.dispose();
    textFieldUnit1TextController1?.dispose();

    textFieldGrade1FocusNode1?.dispose();
    textFieldGrade1TextController1?.dispose();

    textFieldCourse2FocusNode?.dispose();
    textFieldCourse2TextController?.dispose();

    textFieldUnit2FocusNode?.dispose();
    textFieldUnit2TextController?.dispose();

    textFieldGrade2FocusNode?.dispose();
    textFieldGrade2TextController?.dispose();

    textFieldCourse1FocusNode2?.dispose();
    textFieldCourse1TextController2?.dispose();

    textFieldUnit1FocusNode2?.dispose();
    textFieldUnit1TextController2?.dispose();

    textFieldGrade1FocusNode2?.dispose();
    textFieldGrade1TextController2?.dispose();
  }
}
