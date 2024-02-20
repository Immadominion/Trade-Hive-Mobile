import '/components/edit_profile_form/edit_profile_form_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'create_profile_widget.dart' show CreateProfileWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateProfileModel extends FlutterFlowModel<CreateProfileWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for editProfileForm component.
  late EditProfileFormModel editProfileFormModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    editProfileFormModel = createModel(context, () => EditProfileFormModel());
  }

  @override
  void dispose() {
    editProfileFormModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
