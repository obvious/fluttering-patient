import 'package:flutter/material.dart';
import 'package:patient/PreferenceHelper.dart';

class BpPassportConfirmationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xfff0f2f5),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: FittedBox(
                child: Icon(Icons.camera),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 48.0,vertical: 24.0,),
              color: Colors.white,
              child: Center(
                child: Text(
                  'Did your doctor give you a BP Passport?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(
                vertical: 16.0,
                horizontal: 16.0,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    child: OutlineButton(
                      padding: EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 16.0,
                      ),
                      onPressed: () async {
                        // ToDo: Set Bp Passport not given
                        await PreferenceHelper.setPassportAvailability(false);
                      },
                      child: Text(
                        'No'.toUpperCase(),
                        style: TextStyle(
                          color: const Color(0xff0075eb),
                          fontSize: 18.0,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      borderSide: BorderSide(color: const Color(0xff0075eb)),
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: 16.0,
                  ),
                  Expanded(
                    child: RaisedButton(
                      padding: EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 16.0,
                      ),
                      onPressed: () async {
                        // ToDo: Set Bp Passport given
                        await PreferenceHelper.setPassportAvailability(true);
                      },
                      child: Text(
                        'Yes'.toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      color: const Color(0xff0075eb),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
