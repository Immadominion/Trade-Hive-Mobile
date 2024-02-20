// ignore_for_file: unused_import, unnecessary_import

import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'main_logo_model.dart';
export 'main_logo_model.dart';

class MainLogoWidget extends StatefulWidget {
  const MainLogoWidget({super.key});

  @override
  State<MainLogoWidget> createState() => _MainLogoWidgetState();
}

class _MainLogoWidgetState extends State<MainLogoWidget> {
  late MainLogoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MainLogoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        context.pushNamed('mainHomePage');
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            Theme.of(context).brightness == Brightness.dark
                ? 'assets/images/favicon.png'
                : 'assets/images/favicon.png',
            width: 40.0,
            height: 40.0,
            fit: BoxFit.fitHeight,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            'TradeHive',
            semanticsLabel: 'Trade hive icon',
            style: GoogleFonts.getFont(
              'Outfit',
              color: FlutterFlowTheme.of(context).primary,
              fontWeight: FontWeight.w600,
              fontSize: 28.0,
            ),
          ),
        ],
      ),
    );
  }
}
