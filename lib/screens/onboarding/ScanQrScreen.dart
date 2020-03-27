import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:patient/screens/onboarding/CustomQrOverlayShape.dart';
import 'package:patient/screens/onboarding/TempScreen.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:qr_code_scanner/qr_scanner_overlay_shape.dart';

class ScanQrScreen extends StatefulWidget {
  const ScanQrScreen({Key key}) : super(key: key);

  @override
  _ScanQrScreenState createState() => _ScanQrScreenState();
}

class _ScanQrScreenState extends State<ScanQrScreen> {
  String qrText = '';
  QRViewController qrViewController;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Scan BP Passport'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(
              vertical: 12.0,
              horizontal: 24.0,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                SvgPicture.asset(
                  'assets/images/ic_qr_code.svg',
                  width: 80.0,
                  height: 80.0,
                ),
                Container(
                  width: 16.0,
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Hold camera over this symbol on BP Passport',
                    style: TextStyle(
                      color: Color(0xff2f363d),
                      fontWeight: FontWeight.w500,
                      fontSize: 24.0,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQrViewCreated,
              overlay: CustomQrOverlayShape(),
            ),
            flex: 1,
          ),
        ],
      ),
    );
  }

  void _onQrViewCreated(QRViewController controller) {
    this.qrViewController = controller;
    this.qrViewController.scannedDataStream.listen((scanData) {
      Navigator.pushReplacement(context, CupertinoPageRoute(
          // ToDo: Replace this with the "3 BP 2 Medicine" screen
          builder: (context) => TempScreen(scanData)
      ));
      this.qrViewController.pauseCamera();
    });
  }

  @override
  void dispose() {
    this.qrViewController.dispose();
    super.dispose();
  }
}
