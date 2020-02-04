import 'package:saneme_app/packages/packages.dart';


class MineraisPage extends StatefulWidget {
  @override
  _MineraisPageState createState() => _MineraisPageState();
}

class _MineraisPageState extends State<MineraisPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.teal,
              title: Text(
                  'Minérais'
              ),
            ),
            body: Container()),
      ),
    );
  }
}
