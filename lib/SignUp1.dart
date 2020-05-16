import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:adobe_xd/specific_rect_clip.dart';

class SignUp1 extends StatelessWidget {
  SignUp1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(-24.0, -32.0),
            child:
                // Adobe XD layer: 'content' (group)
                Stack(
              children: <Widget>[
                // Adobe XD layer: 'bg' (group)
                Stack(
                  children: <Widget>[
                    Transform.translate(
                      offset: Offset(166.0, 173.0),
                      child:
                          // Adobe XD layer: 'bg' (shape)
                          Container(
                        width: 417.0,
                        height: 417.0,
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.elliptical(208.5, 208.5)),
                          color: const Color(0xff665eff),
                        ),
                      ),
                    ),
                  ],
                ),
                Transform.translate(
                  offset: Offset(41.0, 422.0),
                  child:
                      // Adobe XD layer: 'buttons/large/green' (component)
                      Container(),
                ),
                Transform.translate(
                  offset: Offset(41.0, 145.0),
                  child:
                      // Adobe XD layer: 'textfields' (none)
                      SpecificRectClip(
                    rect: Rect.fromLTWH(0, 0, 327, 207),
                    child: UnconstrainedBox(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 327,
                        height: 204,
                        child: GridView.count(
                          primary: false,
                          padding: EdgeInsets.all(0),
                          mainAxisSpacing: 24,
                          crossAxisSpacing: 20,
                          crossAxisCount: 1,
                          childAspectRatio: 6.288461538461538,
                          children: [
                            {
                              'text': 'Name',
                            },
                            {
                              'text': 'Email',
                            },
                            {
                              'text': 'Password',
                            },
                          ].map((map) {
                            final text = map['text'];
                            return Transform.translate(
                              offset: Offset(-24.0, -170.0),
                              child: Stack(
                                children: <Widget>[
                                  Transform.translate(
                                    offset: Offset(24.0, 170.0),
                                    child:
                                        // Adobe XD layer: 'textfield' (component)
                                        Stack(
                                      children: <Widget>[
                                        // Adobe XD layer: 'bg' (shape)
                                        Container(
                                          width: 327.0,
                                          height: 52.0,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            color: const Color(0xffffffff),
                                            boxShadow: [
                                              BoxShadow(
                                                  color:
                                                      const Color(0x14455b63),
                                                  offset: Offset(0, 4),
                                                  blurRadius: 16)
                                            ],
                                          ),
                                        ),
                                        Transform.translate(
                                          offset: Offset(24.0, 19.0),
                                          child: Text(
                                            text,
                                            style: TextStyle(
                                              fontFamily: 'Gibson',
                                              fontSize: 15,
                                              color: const Color(0x8e78849e),
                                              letterSpacing: 0.3,
                                              fontWeight: FontWeight.w600,
                                            ),
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(-19.0, -5.0),
            child:
                // Adobe XD layer: 'top' (group)
                Stack(
              children: <Widget>[
                // Adobe XD layer: 'tabs' (group)
                Stack(
                  children: <Widget>[
                    Transform.translate(
                      offset: Offset(92.0, 50.0),
                      child:
                          // Adobe XD layer: 'bg' (shape)
                          Container(
                        width: 73.0,
                        height: 32.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: const Color(0xff665eff),
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(0.0, 44.0),
                      child:
                          // Adobe XD layer: 'bg' (shape)
                          Container(
                        width: 375.0,
                        height: 44.0,
                        decoration: BoxDecoration(
                          color: const Color(0x00ffffff),
                          boxShadow: [
                            BoxShadow(
                                color: const Color(0x00455b63),
                                offset: Offset(0, 12),
                                blurRadius: 16)
                          ],
                        ),
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(106.0, 60.0),
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(
                          fontFamily: 'Gibson',
                          fontSize: 12,
                          color: const Color(0xffffffff),
                          letterSpacing: 0.30000000000000004,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(213.0, 60.0),
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                          fontFamily: 'Gibson',
                          fontSize: 12,
                          color: const Color(0xff78849e),
                          letterSpacing: 0.30000000000000004,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
                Transform.translate(
                  offset: Offset(20.0, 15.0),
                  child:
                      // Adobe XD layer: 'status bar/light' (component)
                      Container(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
