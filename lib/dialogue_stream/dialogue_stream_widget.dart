import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/oosh_response_guide_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dialogue_stream_model.dart';
export 'dialogue_stream_model.dart';

class DialogueStreamWidget extends StatefulWidget {
  const DialogueStreamWidget({
    Key? key,
    this.chatRef,
  }) : super(key: key);

  final ChatsRecord? chatRef;

  @override
  _DialogueStreamWidgetState createState() => _DialogueStreamWidgetState();
}

class _DialogueStreamWidgetState extends State<DialogueStreamWidget> {
  late DialogueStreamModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DialogueStreamModel());

    _model.textController ??= TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      height: MediaQuery.sizeOf(context).height * 0.94,
                      decoration: BoxDecoration(),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 22.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pop();
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
                                            context.pop();
                                          },
                                          child: Icon(
                                            Icons.arrow_back_rounded,
                                            color: Colors.black,
                                            size: 24.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        22.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        if (widget.chatRef
                                                ?.userReferenceInvitee ==
                                            currentUserReference)
                                          StreamBuilder<UserRecord>(
                                            stream: UserRecord.getDocument(
                                                widget.chatRef!
                                                    .userReferenceRespondee!),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 88.0,
                                                    height: 88.0,
                                                    child: SpinKitPumpingHeart(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      size: 88.0,
                                                    ),
                                                  ),
                                                );
                                              }
                                              final textUserRecord =
                                                  snapshot.data!;
                                              return Text(
                                                'Chat with ${textUserRecord.displayName}',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              );
                                            },
                                          ),
                                        if (widget.chatRef
                                                ?.userReferenceRespondee ==
                                            currentUserReference)
                                          StreamBuilder<UserRecord>(
                                            stream: UserRecord.getDocument(
                                                widget.chatRef!
                                                    .userReferenceInvitee!),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 88.0,
                                                    height: 88.0,
                                                    child: SpinKitPumpingHeart(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                      size: 88.0,
                                                    ),
                                                  ),
                                                );
                                              }
                                              final textUserRecord =
                                                  snapshot.data!;
                                              return Text(
                                                'Chat with ${textUserRecord.displayName}',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              );
                                            },
                                          ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 22.0, 0.0, 22.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.8,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(33.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    11.0, 11.0, 11.0, 11.0),
                                child: Text(
                                  '\"\"',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodyMediumFamily,
                                        fontStyle: FontStyle.italic,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodyMediumFamily),
                                      ),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              StreamBuilder<List<ChatMessagesRecord>>(
                                stream: queryChatMessagesRecord(
                                  queryBuilder: (chatMessagesRecord) =>
                                      chatMessagesRecord
                                          .where('chat',
                                              isEqualTo:
                                                  widget.chatRef?.reference)
                                          .orderBy('timestamp'),
                                ),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 88.0,
                                        height: 88.0,
                                        child: SpinKitPumpingHeart(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          size: 88.0,
                                        ),
                                      ),
                                    );
                                  }
                                  List<ChatMessagesRecord>
                                      listViewChatMessagesRecordList =
                                      snapshot.data!;
                                  if (listViewChatMessagesRecordList.isEmpty) {
                                    return OoshResponseGuideWidget();
                                  }
                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount:
                                        listViewChatMessagesRecordList.length,
                                    itemBuilder: (context, listViewIndex) {
                                      final listViewChatMessagesRecord =
                                          listViewChatMessagesRecordList[
                                              listViewIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 22.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            if (!listViewChatMessagesRecord
                                                .bIsRespondee)
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.8,
                                                    decoration: BoxDecoration(
                                                      color: Color(0x39445D9E),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              33.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  11.0,
                                                                  11.0,
                                                                  11.0,
                                                                  11.0),
                                                      child: Text(
                                                        listViewChatMessagesRecord
                                                            .text,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            if (listViewChatMessagesRecord
                                                .bIsRespondee)
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.8,
                                                    decoration: BoxDecoration(
                                                      color: Color(0x3700CFC8),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              33.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  11.0,
                                                                  11.0,
                                                                  11.0,
                                                                  11.0),
                                                      child: Text(
                                                        listViewChatMessagesRecord
                                                            .text,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 100.0,
                height: MediaQuery.sizeOf(context).height * 0.06,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Divider(
                      height: 1.0,
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).primary,
                    ),
                    Container(
                      width: MediaQuery.sizeOf(context).width * 0.9,
                      height: MediaQuery.sizeOf(context).height * 0.06,
                      decoration: BoxDecoration(),
                      child: Form(
                        key: _model.formKey,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TextFormField(
                                controller: _model.textController,
                                onFieldSubmitted: (_) async {
                                  await ChatMessagesRecord.collection
                                      .doc()
                                      .set(createChatMessagesRecordData(
                                        chat: widget.chatRef?.reference,
                                        text: _model.textController.text,
                                        timestamp: getCurrentTimestamp,
                                        userReference: currentUserReference,
                                        bIsRespondee: widget.chatRef
                                                    ?.userReferenceInvitee ==
                                                currentUserReference
                                            ? true
                                            : false,
                                      ));
                                  setState(() {
                                    _model.textController?.clear();
                                  });
                                },
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: '| Respond',
                                  hintStyle:
                                      FlutterFlowTheme.of(context).bodySmall,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  errorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                  focusedErrorBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(4.0),
                                      topRight: Radius.circular(4.0),
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                                validator: _model.textControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            FlutterFlowIconButton(
                              borderRadius: 30.0,
                              borderWidth: 1.0,
                              buttonSize: 60.0,
                              icon: Icon(
                                Icons.send_outlined,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 33.0,
                              ),
                              onPressed: () async {
                                if (_model.formKey.currentState == null ||
                                    !_model.formKey.currentState!.validate()) {
                                  return;
                                }

                                await ChatMessagesRecord.collection
                                    .doc()
                                    .set(createChatMessagesRecordData(
                                      timestamp: getCurrentTimestamp,
                                      userReference: currentUserReference,
                                      text: _model.textController.text,
                                      chat: widget.chatRef?.reference,
                                      image: '',
                                      bIsRespondee: false,
                                    ));
                                setState(() {
                                  _model.textController?.clear();
                                });
                              },
                            ),
                          ],
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
    );
  }
}
