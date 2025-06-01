import '/about_bagsakan_components/header/header_widget.dart';
import '/about_bagsakan_components/latin_button/latin_button_widget.dart';
import '/backend/backend.dart';
import '/calculator_components/calculate_btn_sim/calculate_btn_sim_widget.dart';
import '/calculator_components/input_card_list_sim/input_card_list_sim_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'simulation_page_widget.dart' show SimulationPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SimulationPageModel extends FlutterFlowModel<SimulationPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Model for LatinButton component.
  late LatinButtonModel latinButtonModel;
  // Model for CalculateBtnSim component.
  late CalculateBtnSimModel calculateBtnSimModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    latinButtonModel = createModel(context, () => LatinButtonModel());
    calculateBtnSimModel = createModel(context, () => CalculateBtnSimModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    latinButtonModel.dispose();
    calculateBtnSimModel.dispose();
  }
}
