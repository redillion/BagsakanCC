import '/about_bagsakan_components/header/header_widget.dart';
import '/about_bagsakan_components/latin_button/latin_button_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/log_components/save_log_popup/save_log_popup_widget.dart';
import 'dart:ui';
import '/index.dart';
import 'results_page_widget.dart' show ResultsPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ResultsPageModel extends FlutterFlowModel<ResultsPageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for Header component.
  late HeaderModel headerModel;
  // Model for LatinButton component.
  late LatinButtonModel latinButtonModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    latinButtonModel = createModel(context, () => LatinButtonModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    latinButtonModel.dispose();
  }
}
