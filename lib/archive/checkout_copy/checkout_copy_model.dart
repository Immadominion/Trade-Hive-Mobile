// ignore_for_file: unused_import

import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/top_nav/top_nav_widget.dart';
import '/components/u_i_marker/u_i_marker_widget.dart';
import '/dropdowns/modal_create_account/modal_create_account_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'checkout_copy_widget.dart' show CheckoutCopyWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CheckoutCopyModel extends FlutterFlowModel<CheckoutCopyWidget> {
  ///  Local state fields for this page.

  int stepNumber = 1;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topNav component.
  late TopNavModel topNavModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController;

  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;
  // Model for UI_Marker component.
  late UIMarkerModel uIMarkerModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    topNavModel = createModel(context, () => TopNavModel());
    uIMarkerModel = createModel(context, () => UIMarkerModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topNavModel.dispose();
    expandableController.dispose();
    uIMarkerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
