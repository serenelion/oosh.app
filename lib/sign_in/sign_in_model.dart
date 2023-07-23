import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignInModel extends FlutterFlowModel {
  ///  Local state fields for this page.

  String view = 'signup';

  ///  State fields for stateful widgets in this page.

  // State field(s) for Email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for EnterPassword widget.
  TextEditingController? enterPasswordController;
  late bool enterPasswordVisibility;
  String? Function(BuildContext, String?)? enterPasswordControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    enterPasswordVisibility = false;
  }

  void dispose() {
    emailController?.dispose();
    enterPasswordController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
