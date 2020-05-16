import 'package:flutter/material.dart';
import 'dart:ui' as ui;
import 'package:adobe_xd/specific_rect_clip.dart';

class SignIn extends StatelessWidget {
  SignIn({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(-7.0, 8.0),
            child:
                // Adobe XD layer: 'content' (group)
                Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(24.0, 383.0),
                  child:
                      // Adobe XD layer: 'buttons/large/green' (component)
                      Container(),
                ),
                Transform.translate(
                  offset: Offset(24.0, 170.0),
                  child:
                      // Adobe XD layer: 'textfields' (none)
                      SpecificRectClip(
                    rect: Rect.fromLTWH(0, 0, 327, 132),
                    child: UnconstrainedBox(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 327,
                        height: 128,
                        child: GridView.count(
                          primary: false,
                          padding: EdgeInsets.all(0),
                          mainAxisSpacing: 24,
                          crossAxisSpacing: 20,
                          crossAxisCount: 1,
                          childAspectRatio: 6.288461538461538,
                          children: [
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
                Transform.translate(
                  offset: Offset(130.0, 338.33),
                  child: Text(
                    'FORGOT PASSWORD',
                    style: TextStyle(
                      fontFamily: 'Gibson',
                      fontSize: 12,
                      color: const Color(0x9078849e),
                      fontWeight: FontWeight.w600,
                      height: 1.1666666666666667,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(377.0, -786.0),
            child:
                // Adobe XD layer: 'top' (group)
                Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(-377.0, 844.0),
                  child:
                      // Adobe XD layer: 'tab/2 options/1' (component)
                      Container(),
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
