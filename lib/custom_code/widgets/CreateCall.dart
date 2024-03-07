// Automatic FlutterFlow imports

import 'package:call_prototype/custom_code/widgets/room.dart';
import 'package:call_prototype/flutter_flow/flutter_flow_widgets.dart';

import '/flutter_flow/flutter_flow_theme.dart';
// Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Imports other custom widgets

class CreateCall extends StatefulWidget {
  const CreateCall({
    super.key,
    this.width,
    this.height,
    required this.username,
  });

  final double? width;
  final double? height;
  final String username;

  @override
  _CreateCallState createState() => _CreateCallState();
}

class _CreateCallState extends State<CreateCall> {
  @override
  Widget build(BuildContext context) {
    return FFButtonWidget(
      onPressed: () async {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => Room(username: widget.username)));
      },
      text: 'Create Call',
      options: FFButtonOptions(
        width: MediaQuery.sizeOf(context).width * 0.5,
        height: 40,
        padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
        iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
        color: FlutterFlowTheme.of(context).primary,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Readex Pro',
              color: Colors.white,
            ),
        elevation: 3,
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
