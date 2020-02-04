import 'dart:ui';
import 'package:saneme_app/packages/packages.dart';

class Scan extends StatefulWidget {
  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  String result = "Scanner le QR Code du Minerais";

  Future _scanQR() async {
    try {
      String qrResult = await BarcodeScanner.scan();
      setState(() {
        result = qrResult;
      });
    } on PlatformException catch (ex) {
      if (ex.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          result = "Permission Caméra Réfusée";
        });
      } else {
        setState(() {
          result = "Erreur inconnu $ex";
        });
      }
    } on FormatException {
      setState(() {
        result = "Appuyez sur Retour avant de Scanner";
      });
    } catch (ex) {
      setState(() {
        result = "Erreur inconnu $ex";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          centerTitle: true,
          title: Text("Scanner"),
        ),
        body: Center(
          child: Container(
            child: Text(
              result,
              style: new TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(backgroundColor: Colors.teal,
          icon: Icon(Icons.camera_alt),
          label: Text("Scanner"),
          onPressed: _scanQR,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }


}
