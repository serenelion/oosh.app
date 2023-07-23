import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'empty_inbox_list_model.dart';
export 'empty_inbox_list_model.dart';

class EmptyInboxListWidget extends StatefulWidget {
  const EmptyInboxListWidget({Key? key}) : super(key: key);

  @override
  _EmptyInboxListWidgetState createState() => _EmptyInboxListWidgetState();
}

class _EmptyInboxListWidgetState extends State<EmptyInboxListWidget> {
  late EmptyInboxListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyInboxListModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(33.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).secondary,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(22.0, 22.0, 22.0, 22.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to your inbox!',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).displaySmall,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 22.0, 0.0, 22.0),
              child: Text(
                'When you receive responses, they appear here for you with love.',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineSmall,
              ),
            ),
            Icon(
              Icons.all_inbox_rounded,
              color: FlutterFlowTheme.of(context).primaryBackground,
              size: 88.0,
            ),
          ],
        ),
      ),
    );
  }
}
