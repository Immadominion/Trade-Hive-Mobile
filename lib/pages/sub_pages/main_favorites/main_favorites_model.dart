import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/loading_list/loading_list_widget.dart';
import '/components/product_list_view/product_list_view_widget.dart';
import '/components/top_nav/top_nav_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'main_favorites_widget.dart' show MainFavoritesWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainFavoritesModel extends FlutterFlowModel<MainFavoritesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topNav component.
  late TopNavModel topNavModel;
  // Models for product_listView dynamic component.
  late FlutterFlowDynamicModels<ProductListViewModel> productListViewModels;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    topNavModel = createModel(context, () => TopNavModel());
    productListViewModels =
        FlutterFlowDynamicModels(() => ProductListViewModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topNavModel.dispose();
    productListViewModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
