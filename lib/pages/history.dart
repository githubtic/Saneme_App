import 'package:saneme_app/packages/packages.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.teal,
              title: Text(
                  'Historique'
              ),
            ),
            body: Container(
              child: HistoryBody(),
            )),
      ),
    );
  }

}
class HistoryBody extends StatelessWidget {

  final primary = Color(0xff696b9e);
  final secondary = Colors.deepOrangeAccent;

  final List<Map> mineLists = [
    {
      "Responsable": "Essakane",
      "Localisation": "Dori",
      "type": "OR",
      "Date": "",
      "Destination":"",
      "Poids Brut":"",
      "Poids Net": "",
    },
    {
      "Responsable": "Bissa Gold",
      "Localisation": "Kalssaka",
      "type": "Higher Secondary School",
      "Date": "Diamant",
      "Destination":"",
      "Poids Brut":"",
      "Poids Net": "",
    },
    {
      "Responsable": "Burkina Mining",
      "Localisation": "Kaya",
      "type": "OR",
      "Date": "",
      "Destination":"",
      "Poids Brut":"",
      "Poids Net": "",
    },
    {
      "Responsable": "Riverstone Karma",
      "Localisation": "Dori",
      "type": "OR",
      "Date": "",
      "Destination":"",
      "Poids Brut":"",
      "Poids Net": "",
    },
    {
      "Responsable": "SEMAFO",
      "Localisation": "Po",
      "type": "OR",
      "Date": "",
      "Destination":"",
      "Poids Brut":"",
      "Poids Net": "",
    },
    {
      "Responsable": "ROXGOLD SANU",
      "Localisation": "Fada",
      "type": "OR",
      "Date": "",
      "Destination":"",
      "Poids Brut":"",
      "Poids Net": "",
    },
    {
      "Responsable": "Netiama Mining",
      "Localisation": "koudougou",
      "type": "OR",
      "Date": "",
      "Destination":"",
      "Poids Brut":"",
      "Poids Net": "",
    },
    {
      "Responsable": "HUNDE GOLD",
      "Localisation": "Djibo",
      "type": "OR",
      "Date": "",
      "Destination":"",
      "Poids Brut":"",
      "Poids Net": "",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0f0f0),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height * 1,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: mineLists.length,
                    itemBuilder: (BuildContext context, int index) {
                      return buildList(context, index);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildList(BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      width: double.infinity,
      height: 110,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.only(right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 3, color: secondary),
              image: DecorationImage(
                  image: AssetImage(
                      'assets/images/ubuntu.png'
                  ),
                  fit: BoxFit.fill),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  mineLists[index]['Responsable'],
                  style: TextStyle(
                      color: primary,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: secondary,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(mineLists[index]['Localisation'],
                        style: TextStyle(
                            color: primary, fontSize: 13, letterSpacing: .3)),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.school,
                      color: secondary,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(mineLists[index]['type'],
                        style: TextStyle(
                            color: primary, fontSize: 13, letterSpacing: .3)),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

}