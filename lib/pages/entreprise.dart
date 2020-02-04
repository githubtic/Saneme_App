import 'package:saneme_app/packages/packages.dart';


class EntreprisePage extends StatefulWidget {
  @override
  _EntreprisePageState createState() => _EntreprisePageState();
}

class _EntreprisePageState extends State<EntreprisePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.teal,
              title: Text(
                  'Entreprises Miniéres'
              ),
            ),
            body: Container()),
      ),
    );
  }
}
