// ignore_for_file: unused_import

import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/main_logo/main_logo_widget.dart';
import '/dropdowns/dropdown_account/dropdown_account_widget.dart';
import '/dropdowns/dropdown_notifications/dropdown_notifications_widget.dart';
import '/dropdowns/order_summary_new/order_summary_new_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:aligned_tooltip/aligned_tooltip.dart';
import 'package:badges/badges.dart' as badges;
import 'top_nav_widget.dart' show TopNavWidget;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TopNavModel extends FlutterFlowModel<TopNavWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for mainLogo component.
  late MainLogoModel mainLogoModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    mainLogoModel = createModel(context, () => MainLogoModel());
  }

  @override
  void dispose() {
    mainLogoModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
