import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


//flutter build apk --release -target-platform android-arm64

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
      routes: <String, WidgetBuilder>{
        '/info': (BuildContext context) => new _Info(),
        '/Home': (BuildContext context) => new Homepage()
      },
    );
  }
}

String chosenCountry = 'None', chosenState = 'None';
bool checkTip = false;
double Amount = 0, Percent = 0, Total = 0;
String Total2;
double GST = 0, PST = 0;
String APPurl =
    'https://play.google.com/store/apps/details?id=com.maelstrum.tax_calculator';
String EmailUrl = 'mailto:sheepithere@hotmail.com';

//button pressed calls this method calculate tax
_calculate() {
  if (chosenCountry == 'None') chosenState = 'None';
  switch (chosenState) {
    case 'Alberta':
      {
        PST = 0;
        GST = 5;
        break;
      }
    case 'British Columbia':
      {
        PST = 7;
        GST = 5;
        break;
      }
    case 'Manitoba':
      {
        PST = 8;
        GST = 5;
        break;
      }
    case 'New-Brunswick':
      {
        PST = 10;
        GST = 5;
        break;
      }
    case 'Newf & Labrador':
      {
        PST = 10;
        GST = 5;
        break;
      }
    case 'NW Territories':
      {
        PST = 0;
        GST = 5;
        break;
      }
    case 'Nova Scotia':
      {
        PST = 10;
        GST = 5;
        break;
      }
    case 'Nunavut':
      {
        PST = 0;
        GST = 5;
        break;
      }
    case 'Ontario':
      {
        PST = 8;
        GST = 5;
        break;
      }
    case 'Prince Edward Isl':
      {
        PST = 10;
        GST = 5;
        break;
      }
    case 'Québec':
      {
        PST = 9.975;
        GST = 5;
        break;
      }
    case 'Saskatchewan':
      {
        PST = 6;
        GST = 5;
        break;
      }
    case 'Yukon':
      {
        PST = 0;
        GST = 5;
        break;
      }

    case 'Alabama':
      {
        GST = 9.14;
        PST = 0;
        break;
      }

    case 'Alaska':
      {
        GST = 1.43;
        PST = 0;
        break;
      }

    case 'Arizona':
      {
        GST = 8.37;
        PST = 0;
        break;
      }

    case 'Arkansas':
      {
        GST = 9.43;
        PST = 0;
        break;
      }

    case 'California':
      {
        GST = 8.56;
        PST = 0;
        break;
      }

    case 'Colorado':
      {
        GST = 7.63;
        PST = 0;
        break;
      }

    case 'Connecticut':
      {
        GST = 6.35;
        PST = 0;
        break;
      }

    case 'Delaware':
      {
        GST = 0.00;
        PST = 0;
        break;
      }

    case 'Florida':
      {
        GST = 7.05;
        PST = 0;
        break;
      }

    case 'Georgia':
      {
        GST = 7.29;
        PST = 0;
        break;
      }

    case 'Hawaii':
      {
        GST = 4.41;
        PST = 0;
        break;
      }

    case 'Idaho':
      {
        GST = 6.03;
        PST = 0;
        break;
      }

    case 'Illinois':
      {
        GST = 8.74;
        PST = 0;
        break;
      }

    case 'Indiana':
      {
        GST = 7.00;
        PST = 0;
        break;
      }

    case 'Iowa':
      {
        GST = 6.82;
        PST = 0;
        break;
      }

    case 'Kansas':
      {
        GST = 8.67;
        PST = 0;
        break;
      }

    case 'Kentucky':
      {
        GST = 6.00;
        PST = 0;
        break;
      }

    case 'Louisiana':
      {
        GST = 9.45;
        PST = 0;
        break;
      }

    case 'Maine':
      {
        GST = 5.50;
        PST = 0;
        break;
      }

    case 'Maryland':
      {
        GST = 6.00;
        PST = 0;
        break;
      }

    case 'Massachusetts':
      {
        GST = 6.25;
        PST = 0;
        break;
      }

    case 'Michigan':
      {
        GST = 6.00;
        PST = 0;
        break;
      }

    case 'Minnesota':
      {
        GST = 7.43;
        PST = 0;
        break;
      }

    case 'Mississippi':
      {
        GST = 7.07;
        PST = 0;
        break;
      }

    case 'Missouri':
      {
        GST = 8.13;
        PST = 0;
        break;
      }

    case 'Montana':
      {
        GST = 0;
        PST = 0;
        break;
      }

    case 'Nebraska':
      {
        GST = 6.85;
        PST = 0;
        break;
      }

    case 'Nevada':
      {
        GST = 8.14;
        PST = 0;
        break;
      }

    case 'New Hampshire':
      {
        GST = 0.00;
        PST = 0;
        break;
      }

    case 'New Jersey':
      {
        GST = 6.60;
        PST = 0;
        break;
      }

    case 'New Mexico':
      {
        GST = 7.82;
        PST = 0;
        break;
      }

    case 'New Mexico':
      {
        GST = 8.49;
        PST = 0;
        break;
      }

    case 'New York':
      {
        GST = 6.97;
        PST = 0;
        break;
      }

    case 'North Carolina':
      {
        GST = 6.85;
        PST = 0;
        break;
      }

    case 'North Dakota':
      {
        GST = 7.17;
        PST = 0;
        break;
      }

    case 'Ohio':
      {
        GST = 8.92;
        PST = 0;
        break;
      }

    case 'Oklahoma':
      {
        GST = 0.00;
        PST = 0;
        break;
      }

    case 'Oregon':
      {
        GST = 6.34;
        PST = 0;
        break;
      }

    case 'Pennsylvania':
      {
        GST = 7.00;
        PST = 0;
        break;
      }

    case 'Rhode Island':
      {
        GST = 7.43;
        PST = 0;
        break;
      }

    case 'South Carolina':
      {
        GST = 6.40;
        PST = 0;
        break;
      }

    case 'South Dakota':
      {
        GST = 9.47;
        PST = 0;
        break;
      }

    case 'Tennessee':
      {
        GST = 8.19;
        PST = 0;
        break;
      }

    case 'Texas':
      {
        GST = 6.94;
        PST = 0;
        break;
      }

    case 'Utah':
      {
        GST = 6.18;
        PST = 0;
        break;
      }
    case 'Vermont':
      {
        GST = 5.65;
        PST = 0;
        break;
      }
    case 'Virginia':
      {
        GST = 9.17;
        PST = 0;
        break;
      }
    case 'Washington':
      {
        GST = 6.39;
        PST = 0;
        break;
      }

    case 'West Virginia':
      {
        GST = 5.44;
        PST = 0;
        break;
      }
    case 'Wisconsin':
      {
        GST = 5.36;
        PST = 0;
        break;
      }
    case 'Wyoming':
      {
        GST = 6.00;
        PST = 0;
        break;
      }
    default:
      {
        GST = 0;
        PST = 0;
        break;
      }
  }
  if (chosenCountry != 'None') Percent = PST + GST;
  Total = Percent / 100 * Amount + Amount;
  Total2 = Total.toStringAsFixed(2);
}

//colours and text editing listener

const var1Blue = const Color(0xFF254F96);
const var2Blue = const Color(0xFF172F58);
const drk_blue = const Color(0xFF182E52);
const blue = const Color(0xFF0000EE);
const dark_gray = const Color(0xFF606060);
const lgt_gray = const Color(0xFFADADAD);
const gray = const Color(0xFFE6E6E6);
const silver = const Color(0xFFE8E8E8);
const gold = const Color(0xFFEFD12F);
TextEditingController amount_controller = TextEditingController();
TextEditingController percent_controller = TextEditingController();

class _Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: gray,
        appBar: AppBar(
          iconTheme: IconThemeData(color: silver),
          backgroundColor: drk_blue,
          title: Text(
            'About',
            style: TextStyle(color: silver),
          ),
        ),
        body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [var1Blue, var2Blue])),
            child: ListView(children: <Widget>[
              Card(
                child: Image.asset('assets/AppInfo.jpeg'),
              ),
              ListTile(
                  title: Text(
                'An app mainly made to calculate sales taxes and get desirable popular amounts percentages like '
                'tips, can also be used to quickly compute small portions'
                ' from big numbers.',
                style: TextStyle(color: lgt_gray),
              )),
              Divider(
                color: Colors.black45,
              ),
              ListTile(
                title: Text(
                  'Developed by Rami.A.',
                  style: TextStyle(color: lgt_gray),
                ),
              ),
              Divider(
                color: Colors.black45,
              ),
              ListTile(
                leading: Icon(
                  Icons.shop,
                  color: Colors.white,
                ),
                title: Text(
                  'Rate on Google Play',
                  style: TextStyle(color: silver),
                ),
                onTap: () => launch(APPurl),
              ),
              ListTile(
                leading: Icon(
                  Icons.mail,
                  color: Colors.white,
                ),
                title: Text(
                  'sheepithere@hotmail.com',
                  style: TextStyle(
                      color: silver, decoration: TextDecoration.underline),
                ),
                onTap: () => launch(EmailUrl),
              )
            ])));
  }
}

class Homepage extends StatefulWidget {
  Homepage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyAppState createState() => _MyAppState();
}

//main method
class _MyAppState extends State<Homepage> {
  static const countItems = <String>['Canada', 'United-States', 'None'];
  final List<DropdownMenuItem<String>> menuItems = countItems
      .map(
        (String value) => DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            ),
      )
      .toList();
  static const countCAN = <String>[
    'None',
    'Alberta',
    'British Columbia',
    'Manitoba',
    'New-Brunswick',
    'Newf & Labrador',
    'NW Territories',
    'Nova Scotia',
    'Nunavut',
    'Ontario',
    'Prince Edward Isl',
    'Québec',
    'Saskatchewan',
    'Yukon'
  ];

  static const countUS = <String>[
    'None',
    'Alabama',
    'Alaska',
    'Arizona',
    'Arkansas',
    'California',
    'Colorado',
    'Connecticut',
    'Delaware',
    'Florida',
    'Georgia',
    'Hawaii',
    'Idaho',
    'Illinois',
    'Indiana',
    'Iowa',
    'Kansas',
    'Kentucky',
    'Louisiana',
    'Maine',
    'Maryland',
    'Massachusetts',
    'Michigan',
    'Minnesota',
    'Mississippi',
    'Missouri',
    'Montana',
    'Nebraska',
    'Nevada',
    'New Hampshire',
    'New Jersey',
    'New Mexico',
    'New York',
    'North Carolina',
    'North Dakota',
    'Ohio',
    'Oklahoma',
    'Oregon',
    'Pennsylvania',
    'Rhode Island',
    'South Carolina',
    'South Dakota',
    'Tennessee',
    'Texas',
    'Utah',
    'Vermont',
    'Virginia',
    'Washington',
    'West Virginia',
    'Wisconsin',
    'Wyoming'
  ];

  final List<DropdownMenuItem<String>> menuItems2 = countCAN
      .map(
        (String value) => DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            ),
      )
      .toList();

  final List<DropdownMenuItem<String>> menuItems3 = countUS
      .map(
        (String value) => DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            ),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    if (Total2 == null) Total2 = '0';
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.info),
                color: silver,
                iconSize: 27,
                onPressed: () {
                  Navigator.of(context).pushNamed('/info');
                },
              )
            ],
            backgroundColor: drk_blue,
            title: Text(
              'Tax Calculator',
              style: TextStyle(color: silver),
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [var1Blue, var2Blue])),
            child: ListView(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(25, 10, 120, 20),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Input the amount',
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: silver)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: drk_blue)),
                        labelStyle: TextStyle(color: lgt_gray),
                        prefixText: '\$',
                        prefixStyle: TextStyle(color: gold)),
                    style: TextStyle(color: gray),
                    keyboardType: TextInputType.numberWithOptions(),
                    maxLength: 9,
                    onChanged: (v) {
                      amount_controller.text = v;
                      setState(() {
                        Amount = double.parse(amount_controller.text);
                        _calculate();
                      });
                    },
                  ),
                ),
                Divider(),
                Row(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
                        child: Text(
                          'Optional',
                          style: TextStyle(color: lgt_gray),
                        )),
                    Spacer(),
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 130, 0),
                        child: Text(
                          'Country',
                          textAlign: TextAlign.left,
                          style: TextStyle(color: lgt_gray),
                        )),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.fromLTRB(25, 0, 0, 15),
                        child: Text(
                          'Show tips',
                          textScaleFactor: 1.2,
                          style: TextStyle(color: silver),
                        )),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 12),
                      child: Checkbox(
                          checkColor: gold,
                          activeColor: drk_blue,
                          onChanged: (bool value) {
                            setState(() => checkTip = value);
                          },
                          value: checkTip),
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 54, 15),
                            child: ListTile(
                              trailing: Theme(
                                  data: Theme.of(context)
                                      .copyWith(canvasColor: drk_blue),
                                  child: DropdownButton(
                                    value: chosenCountry,
                                    style: TextStyle(color: silver),
                                    iconEnabledColor: gold,
                                    onChanged: ((String newValue) {
                                      chosenState = 'None';
                                      setState(() {
                                        chosenCountry = newValue;
                                        Percent = 0;
                                        _calculate();
                                      });
                                    }),
                                    items: menuItems,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                if (chosenCountry == 'None') ...[
                  Divider(),
                  Container(
                    margin: EdgeInsets.fromLTRB(25, 10, 120, 20),
                    child: TextField(
                        style: TextStyle(color: silver),
                        decoration: InputDecoration(
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: silver)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: drk_blue)),
                            labelText: 'Input the tax percentage',
                            labelStyle: TextStyle(color: lgt_gray),
                            prefixText: '%',
                            prefixStyle: TextStyle(color: gold)),
                        keyboardType: TextInputType.numberWithOptions(),
                        maxLength: 9,
                        onChanged: (a) {
                          percent_controller.text = a;
                          setState(() {
                            Percent = double.parse(percent_controller.text);
                            _calculate();
                          });
                        }),
                  )
                ],
                if (chosenCountry == 'Canada')
                  Row(children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Row(children: <Widget>[
                            Spacer(),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 85, 0),
                              child: Text('State/Province',
                                  style: TextStyle(color: lgt_gray)),
                            )
                          ]),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
                            child: ListTile(
                              trailing: Theme(
                                  data: Theme.of(context)
                                      .copyWith(canvasColor: drk_blue),
                                  child: DropdownButton(
                                    style: TextStyle(color: silver),
                                    value: chosenState,
                                    iconEnabledColor: gold,
                                    onChanged: ((String newValue) {
                                      setState(() {
                                        chosenState = newValue;
                                        _calculate();
                                      });
                                    }),
                                    items: menuItems2,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                if (chosenCountry == 'United-States')
                  Row(children: <Widget>[
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Row(children: <Widget>[
                            Spacer(),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 86, 0),
                              child: Text('State/Province',
                                  style: TextStyle(color: lgt_gray)),
                            )
                          ]),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 38, 0),
                            child: ListTile(
                              trailing: Theme(
                                  data: Theme.of(context)
                                      .copyWith(canvasColor: drk_blue),
                                  child: DropdownButton(
                                    style: TextStyle(color: silver),
                                    value: chosenState,
                                    iconEnabledColor: gold,
                                    onChanged: ((String newValue) {
                                      setState(() {
                                        chosenState = newValue;
                                        _calculate();
                                      });
                                    }),
                                    items: menuItems3,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                if (checkTip) ...[
                  Divider(),
                  Text(
                    'Recommended Tips',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: lgt_gray, decoration: TextDecoration.underline),
                  ),
                  Container(
                      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Row(children: <Widget>[
                        Container(
                            margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
                            child: Column(children: <Widget>[
                              Text(
                                '15%',
                                textAlign: TextAlign.center,
                                textScaleFactor: 1.6,
                                style: TextStyle(color: silver),
                              ),
                              Text(
                                (Total * 0.15).toStringAsFixed(2) + '\$',
                                textAlign: TextAlign.center,
                                textScaleFactor: 1.6,
                                style: TextStyle(
                                    decoration: TextDecoration.overline,
                                    color: gold,
                                    decorationColor: silver),
                              )
                            ])),
                        Spacer(),
                        Column(children: <Widget>[
                          Text('20%',
                              textAlign: TextAlign.center,
                              textScaleFactor: 1.6,
                              style: TextStyle(color: silver)),
                          Text(
                            (Total * 0.20).toStringAsFixed(2) + '\$',
                            textAlign: TextAlign.center,
                            textScaleFactor: 1.6,
                            style: TextStyle(
                                decoration: TextDecoration.overline,
                                color: gold,
                                decorationColor: silver),
                          )
                        ]),
                        Spacer(),
                        Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 25, 0),
                            child: Column(children: <Widget>[
                              Text('25%',
                                  textAlign: TextAlign.center,
                                  textScaleFactor: 1.6,
                                  style: TextStyle(color: silver)),
                              Text(
                                (Total * 0.25).toStringAsFixed(2) + '\$',
                                textAlign: TextAlign.center,
                                textScaleFactor: 1.6,
                                style: TextStyle(
                                    decoration: TextDecoration.overline,
                                    color: gold,
                                    decorationColor: silver),
                              )
                            ])),
                      ]))
                ],
                Divider(
                  color: Colors.black45,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '      SUBTOTAL = ',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: lgt_gray),
                    ),
                    Text(
                      Amount.toStringAsFixed(2) + '\$',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: gold),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '      GST-HST    ',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: lgt_gray),
                    ),
                    Text(
                      '= ',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: lgt_gray),
                    ),
                    Text(
                      GST.toString() + '%',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: gold),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text(
                      '      PST-QST     = ',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: lgt_gray),
                    ),
                    Text(
                      PST.toString() + '%',
                      textAlign: TextAlign.left,
                      style: TextStyle(color: gold),
                    )
                  ],
                ),
                Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Row(children: <Widget>[
                      Text(
                        'Total Tax =',
                        textScaleFactor: 1.2,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            decoration: TextDecoration.overline,
                            decorationColor: lgt_gray,
                            color: silver),
                      ),
                      Text(
                        (GST + PST).toString() + '%',
                        textScaleFactor: 1.2,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            decoration: TextDecoration.overline,
                            decorationColor: gold,
                            color: gold),
                      ),
                      if (chosenCountry == 'United-States')
                        Container(
                            child: IconButton(
                                icon: Icon(Icons.help),
                                iconSize: 25,
                                tooltip: 'U.S Tax Help',
                                onPressed: () {
                                  showDialog<String>(
                                      context: context,
                                      builder: (BuildContext context) =>
                                          AlertDialog(
                                            title: const Text('US sale tax'),
                                            content: Text(
                                                'Due to the local tax variations of each state in the US, the average local '
                                                'tax has been calculated per state and added with the state tax. If you think the number'
                                                ' is still inaccurate. You can always use the manual tax input by choosing *None* as the country.'),
                                            actions: <Widget>[
                                              FlatButton(
                                                child: Text('Close'),
                                                onPressed: () =>
                                                    Navigator.of(context)
                                                        .pop('Cancel'),
                                              ),
                                            ],
                                          ));
                                }))
                    ])),
                Divider(
                  color: Colors.black,
                ),
                Row(children: <Widget>[
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 7, 0, 10),
                    child: Text(
                      'Total:  ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, color: silver),
                      textScaleFactor: 2,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 7, 0, 10),
                    child: Text(
                      Total2.toString() + '\$',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, color: gold),
                      textScaleFactor: 2,
                    ),
                  ),
                ]),
                Column(mainAxisSize: MainAxisSize.max, children: <Widget>[
                  Align(
                      alignment: FractionalOffset.bottomCenter,
                      child: Text(
                        'All rights reserved - Maelstrum 2019',
                        style: TextStyle(color: lgt_gray),
                        textScaleFactor: 0.7,
                      ))
                ])
              ],
            ),
          )),
    );
  }
}
