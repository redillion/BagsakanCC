import '/about_bagsakan_components/header/header_widget.dart';
import '/about_bagsakan_components/latin_button/latin_button_widget.dart';
import '/calculator_components/calculate_btn/calculate_btn_widget.dart';
import '/calculator_components/input_card_list/input_card_list_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'calculator_home_page_widget.dart' show CalculatorHomePageWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CalculatorHomePageModel
    extends FlutterFlowModel<CalculatorHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Model for LatinButton component.
  late LatinButtonModel latinButtonModel;
  // Model for CalculateBtn component.
  late CalculateBtnModel calculateBtnModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    latinButtonModel = createModel(context, () => LatinButtonModel());
    calculateBtnModel = createModel(context, () => CalculateBtnModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    latinButtonModel.dispose();
    calculateBtnModel.dispose();
  }
}
