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
                child: Icon(Icons.camera, color: Colors.grey[350]),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 48.0,
                vertical: 24.0,
              ),
              color: Colors.white,
              child: Center(
                child: Text(
                  'Did your doctor give you a BP Passport?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w600,
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
                  Container(
                    width: 16.0,
                  ),
                  Expanded(
                    child: RaisedButton(
                      padding: EdgeInsets.symmetric(
                        vertical: 16.0,
                        horizontal: 16.0,
                      ),
                      color: Color(0xffe0f0ff),
                      onPressed: () {
                        return showDialog(
                            context: context,
                            barrierDismissible: false,
                            child: AlertDialog(
                              title: Text("Update coming soon!"),
                              actions: <Widget>[
                                Padding(
                                  child: FlatButton(
                                    child: Text(
                                      "OK",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                  padding: EdgeInsets.only(right: 8),
                                ),
                              ],
                              content: Text(
                                "Sorry, Simple is only available for patients with BP Passports. "
                                "Please come back in a few weeks when it is available for anyone!",
                                style: TextStyle(
                                    height: 1.5,
                                    fontSize: 18,
                                    color: Colors.black54),
                              ),
                            ));
                      },
                      child: Text(
                        'No'.toUpperCase(),
                        style: TextStyle(
                          color: const Color(0xff0075eb),
                          fontSize: 18.0,
                        ),
                      ),
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

  _showNotAvailableAlert(context) {}
}
