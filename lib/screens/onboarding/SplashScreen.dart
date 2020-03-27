import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:patient/screens/onboarding/BpPassportConfirmationScreen.dart';

class SplashScreen extends StatelessWidget {
  static const _titleStyle = TextStyle(
    color: Colors.white,
    fontSize: 48.0,
    fontWeight: FontWeight.bold,
  );
  static const _itemStyle = TextStyle(
    color: Colors.white,
    fontSize: 24.0,
  );
  static const _iconSize = 104.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) => Container(
          padding: const EdgeInsets.fromLTRB(
            12.0,
            48.0,
            12.0,
            16.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 48.0,
                    width: 48.0,
                    child: FittedBox(
                      fit: BoxFit.fitHeight,
                      child:
                          SvgPicture.asset('assets/images/ic_logo_simple.svg'),
                    ),
                  ),
                  Container(
                    width: 16.0,
                  ),
                  Text(
                    'Simple',
                    style: _titleStyle,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: _iconSize,
                    width: _iconSize,
                    child: FittedBox(
                      fit: BoxFit.fitHeight,
                      child: Icon(
                        Icons.gradient,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: 16.0,
                  ),
                  Expanded(
                    child: Text(
                      'Track your blood pressure',
                      style: _itemStyle,
                      softWrap: true,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: _iconSize,
                    width: _iconSize,
                    child: FittedBox(
                      fit: BoxFit.fitHeight,
                      child:
                          SvgPicture.asset('assets/images/ic_talk_doctor.svg'),
                    ),
                  ),
                  Container(
                    width: 16.0,
                  ),
                  Expanded(
                    child: Text(
                      'Talk to a real doctor about your BP',
                      style: _itemStyle,
                      softWrap: true,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: _iconSize,
                    width: _iconSize,
                    child: FittedBox(
                      fit: BoxFit.fitHeight,
                      child: Icon(
                        Icons.alarm,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: 16.0,
                  ),
                  Expanded(
                    child: Text(
                      'Reminders to take medicines',
                      style: _itemStyle,
                      softWrap: true,
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                child: RaisedButton(
                  padding: EdgeInsets.symmetric(
                    vertical: 16.0,
                    horizontal: 16.0,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BpPassportConfirmationScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Start'.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  color: const Color(0xff0075eb),
                ),
              ),
            ],
          ),
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
