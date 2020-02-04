import 'package:saneme_app/packages/packages.dart';

class GraphePage extends StatefulWidget {
  @override
  _GraphePageState createState() => _GraphePageState();
}

class _GraphePageState extends State<GraphePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.teal,
              title: Text(
                  'Graphes'
              ),
            ),
            body: Container(
                child: SfCircularChart(

                )
            )),
      ),
    );
  }
}
