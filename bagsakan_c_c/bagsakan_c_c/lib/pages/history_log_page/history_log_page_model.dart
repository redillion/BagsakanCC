import '/about_bagsakan_components/header/header_widget.dart';
import '/about_bagsakan_components/latin_button/latin_button_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'history_log_page_widget.dart' show HistoryLogPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HistoryLogPageModel extends FlutterFlowModel<HistoryLogPageWidget> {
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
