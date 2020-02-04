import 'package:saneme_app/packages/packages.dart';


class HiddenMenuPage extends StatefulWidget {
  _HiddenMenuPageState createState() => _HiddenMenuPageState();
}

class _HiddenMenuPageState extends State<HiddenMenuPage>
    with TickerProviderStateMixin {
  bool menuShown = false;
  double appbarHeight = 80.0;
  double menuHeight = 0.0;
  Animation<double> openAnimation, closeAnimation;
  AnimationController openController, closeController;

  void initState() {
    super.initState();
    openController = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);
    closeController = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);
    openAnimation = Tween(begin: 0.0, end: 1.0).animate(openController)
      ..addListener(() {
        setState(() {
          menuHeight = openAnimation.value;
        });
      });
    closeAnimation = Tween(begin: 1.0, end: 0.0).animate(closeController)
      ..addListener(() {
        setState(() {
          menuHeight = closeAnimation.value;
        });
      });
  }

  _handleMenuPress() {
    setState(() {
      openController.reset();
      closeController.reset();
      menuShown = !menuShown;
      menuShown ? openController.forward() : closeController.forward();
    });
  }

  @override
  void dispose() {
    openController.dispose();
    closeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              color: Colors.teal,
              height: menuHeight,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: <Widget>[
                      IconButton(
                        icon: Icon(menuShown ? Icons.cancel : Icons.menu),
                        color: Colors.white,
                        onPressed: _handleMenuPress,
                      ),
                      Text(menuShown ? "Menu" : "Accueil",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                              fontSize: 20.0))
                    ],
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Expanded(
                    child: ListView(
                      children: <Widget>[
                        FlatButton(
                          child: Container(
                              padding: EdgeInsets.only(bottom: 10.0),
                              alignment: Alignment.center,
                              child: Text("Accueil",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20.0,
                                  ))),disabledColor: Colors.redAccent,
                          color: Colors.transparent,
                          splashColor: Colors.tealAccent,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HiddenMenuPage()));
                          },
                        ),
                        Divider(
                          color: Colors.white,
                        ),
//                        FlatButton(
//                          child: Container(
//                              padding: EdgeInsets.only(bottom: 10.0),
//                              alignment: Alignment.center,
//                              child: Text("Entreprises Minières",
//                                  style: TextStyle(
//                                    color: Colors.white,
//                                    fontWeight: FontWeight.w800,
//                                    fontSize: 20.0,
//                                  ))),
//                          color: Colors.transparent,
//                          splashColor: Colors.tealAccent,
//                          onPressed: () {
//                            Navigator.push(
//                                context,
//                                MaterialPageRoute(
//                                    builder: (context) => EntreprisePage()));
//                          },
//                        ),
//                        Divider(
//                          color: Colors.white,
//                        ),
//                        FlatButton(
//                          child: Container(
//                              padding: EdgeInsets.only(bottom: 10.0),
//                              alignment: Alignment.center,
//                              child: Text("Les Minerais",
//                                  style: TextStyle(
//                                    color: Colors.white,
//                                    fontWeight: FontWeight.w800,
//                                    fontSize: 20.0,
//                                  ))),
//                          color: Colors.transparent,
//                          splashColor: Colors.tealAccent,
//                          onPressed: () {
//                            Navigator.push(
//                                context,
//                                MaterialPageRoute(
//                                    builder: (context) => MineraisPage()));
//                          },
//                        ),
//                        Divider(
//                          color: Colors.white,
//                        ),
//                        FlatButton(
//                          child: Container(
//                              padding: EdgeInsets.only(bottom: 10.0),
//                              alignment: Alignment.center,
//                              child: Text("Destination",
//                                  style: TextStyle(
//                                    color: Colors.white,
//                                    fontWeight: FontWeight.w800,
//                                    fontSize: 20.0,
//                                  ))),
//                          color: Colors.transparent,
//                          splashColor: Colors.tealAccent,
//                          onPressed: () {
//                            Navigator.push(
//                                context,
//                                MaterialPageRoute(
//                                    builder: (context) => DestinationPage()));
//                          },
//                        ),
//                        Divider(
//                          color: Colors.white,
//                        ),
                        FlatButton(
                          child: Container(
                              padding: EdgeInsets.only(bottom: 10.0),
                              alignment: Alignment.center,
                              child: Text("Graphes",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20.0,
                                  ))),
                          color: Colors.transparent,
                          splashColor: Colors.tealAccent,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GraphePage()));
                          },
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                        FlatButton(
                          child: Container(
                              padding: EdgeInsets.only(bottom: 10.0),
                              alignment: Alignment.center,
                              child: Text("Historique",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20.0,
                                  ))),
                          color: Colors.transparent,
                          splashColor: Colors.tealAccent,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => History()));
                          },
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                        FlatButton(
                          child: Container(
                              padding: EdgeInsets.only(bottom: 10.0),
                              alignment: Alignment.center,
                              child: Text("Scanner",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 20.0,
                                  ))),
                          color: Colors.transparent,
                          splashColor: Colors.tealAccent,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Scan()));
                          },
                        ),
                        Divider(
                          color: Colors.white,
                        ),
//                        FlatButton(
//                          child: Container(
//                              padding: EdgeInsets.only(bottom: 10.0),
//                              alignment: Alignment.center,
//                              child: Text("Profil",
//                                  style: TextStyle(
//                                    color: Colors.white,
//                                    fontWeight: FontWeight.w800,
//                                    fontSize: 20.0,
//                                  ))),
//                          color: Colors.transparent,
//                          splashColor: Colors.tealAccent,
//                          onPressed: () {
//                            Navigator.push(
//                                context,
//                                MaterialPageRoute(
//                                    builder: (context) => Settings()));
//                          },
//                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  margin: EdgeInsets.only(
                      top: menuHeight * (constraints.maxHeight - 60) + 60),
                  color: Colors.transparent,
                  child: Material(
                    color: Colors.grey.shade800,
                    elevation: 16.0,
                    shape: BeveledRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(46.0)),
                    ),
                    child: DashboardPage(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
