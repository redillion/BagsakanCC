import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'header_model.dart';
export 'header_model.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({
    super.key,
    required this.page,
  });

  final String? page;

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  late HeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(20.0, 30.0, 20.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 1340.8,
            height: 100.0,
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).primary,
                            borderRadius: 20.0,
                            buttonSize: 70.0,
                            fillColor: widget!.page == 'CalculatorHomePage'
                                ? Color(0xFFFF1A1A)
                                : FlutterFlowTheme.of(context).primary,
                            icon: Icon(
                              Icons.calculate_outlined,
                              color: widget!.page == 'CalculatorHomePage'
                                  ? FlutterFlowTheme.of(context)
                                      .secondaryBackground
                                  : Colors.black,
                              size: 50.0,
                            ),
                            showLoadingIndicator: true,
                            onPressed: () async {
                              context.pushNamed(
                                CalculatorHomePageWidget.routeName,
                                queryParameters: {
                                  'inputindex': serializeParam(
                                    0,
                                    ParamType.int,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).secondary,
                            borderRadius: 20.0,
                            buttonSize: 70.0,
                            fillColor: widget!.page == 'SetTasksPage'
                                ? Color(0xFFFA7E31)
                                : FlutterFlowTheme.of(context).secondary,
                            icon: Icon(
                              Icons.checklist_rtl_sharp,
                              color: widget!.page == 'SetTasksPage'
                                  ? FlutterFlowTheme.of(context)
                                      .secondaryBackground
                                  : Colors.black,
                              size: 50.0,
                            ),
                            onPressed: () async {
                              context.pushNamed(
                                SetTasksPageWidget.routeName,
                                queryParameters: {
                                  'taskparam': serializeParam(
                                    [],
                                    ParamType.String,
                                    isList: true,
                                  ),
                                }.withoutNulls,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).tertiary,
                            borderRadius: 20.0,
                            buttonSize: 70.0,
                            fillColor: widget!.page == 'HistoryLogPage'
                                ? Color(0xFFF7AA34)
                                : FlutterFlowTheme.of(context).tertiary,
                            icon: Icon(
                              Icons.history,
                              color: widget!.page == 'HistoryLogPage'
                                  ? FlutterFlowTheme.of(context)
                                      .secondaryBackground
                                  : Colors.black,
                              size: 50.0,
                            ),
                            onPressed: () async {
                              context.pushNamed(
                                HistoryLogPageWidget.routeName,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).alternate,
                            borderRadius: 20.0,
                            buttonSize: 70.0,
                            fillColor: widget!.page == 'SearchDocsPage'
                                ? Color(0xFFFCDA4C)
                                : FlutterFlowTheme.of(context).alternate,
                            icon: Icon(
                              Icons.find_in_page,
                              color: widget!.page == 'SearchDocsPage'
                                  ? FlutterFlowTheme.of(context)
                                      .secondaryBackground
                                  : Colors.black,
                              size: 45.0,
                            ),
                            onPressed: () async {
                              context.pushNamed(
                                SearchDocsPageWidget.routeName,
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(AboutUsPageWidget.routeName);
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              AboutUsPageWidget.routeName,
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: Image.asset(
                              'assets/images/Bagsakan_Logo-removebg-preview.png',
                              width: 150.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
