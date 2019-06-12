import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      showSemanticsDebugger: false,
      home: MyApp(),
    ),
  );
}




class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: new Carousel(
          boxFit: BoxFit.cover,
          images: [
            new NetworkImage(
                'https://static1.squarespace.com/static/577c209ad482e935c6b1e2a4/t/5b0df6ae1ae6cff4f8f03a6e/1527641806065/garden_club_blog.jpg?format=10000w'),
            new NetworkImage(
                'https://static1.squarespace.com/static/577c209ad482e935c6b1e2a4/t/5b718427562fa71f5e582085/1534166074632/tomato_9_18.jpg?format=100000w'),
            new NetworkImage(
                'https://static1.squarespace.com/static/577c209ad482e935c6b1e2a4/t/58f56462c534a5b6189ae0ef/1492477039659/?format=10000w'),
          ],
          animationDuration: Duration(seconds: 2),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FarmerDetails()));
          },
          child: Icon(Icons.arrow_forward),
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Text('Thug ༼ຈل͜ຈ༽ Farmer'),
            backgroundColor: Colors.black,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search, color: Colors.white),
                onPressed: () {},
              )
            ]),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Tomato()));
              },
              child: Image.network(
                  'https://www.bigbasket.com/media/uploads/p/l/50000557_5-fresho-tomato-hybrid-organically-grown.jpg'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Onion()));
              },
              child: Image.network(
                  'https://www.bigbasket.com/media/uploads/p/l/40023472_3-fresho-onion-organically-grown.jpg'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Carrot()));
              },
              child: Image.network(
                  'https://www.bigbasket.com/media/uploads/p/l/10000272_11-fresho-carrot-ooty.jpg'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Potato()));
              },
              child: Image.network(
                  'https://www.bigbasket.com/media/uploads/p/l/40023476_4-fresho-potato-organically-grown.jpg'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Pees()));
              },
              child: Image.network(
                  'https://www.bigbasket.com/media/uploads/p/l/10000284_11-fresho-green-peas.jpg'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Pees()));
              },
              child: Image.network(
                  'https://www.bigbasket.com/media/uploads/p/l/50000506_4-fresho-garlic-organically-grown.jpg'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Beeroot()));
              },
              child: Image.network(
                  'https://www.bigbasket.com/media/uploads/p/l/40022635_4-fresho-beetroot-organically-grown.jpg'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Ginger()));
              },
              child: Image.network(
                  'https://www.bigbasket.com/media/uploads/p/l/40023480_3-fresho-ginger-organically-grown.jpg'),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Cabbage()));
              },
              child: Image.network(
                  'https://www.bigbasket.com/media/uploads/p/l/40023473_4-fresho-cabbage-organically-grown.jpg'),
            ),
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => FarmerDetails()));
          },
          child: Icon(Icons.arrow_forward),
          backgroundColor: Colors.black,
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              // Header Part of the Drawer
              UserAccountsDrawerHeader(
                accountName: Text('Farmer'),
                accountEmail: Text('farmer@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.teal,
                  ),
                ),
                decoration: new BoxDecoration(color: Colors.black),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('HomePage'),
                  leading: Icon(Icons.home),
                ),
              ),

              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('My Account'),
                  leading: Icon(Icons.person),
                ),
              ),
            ],
          ),
        ),
        //body: LoginScreen();
      ),
    );
  }
}

class Tomato extends StatefulWidget {
  @override
  _TomatoState createState() => _TomatoState();
}

class _TomatoState extends State<Tomato> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => new WebviewScaffold(
              url: "https://1nf0rmed.github.io/public_html/",
              appBar: new AppBar(
                title: new Text("Plant Health"),
              ),
            ),
      },
    );
  }
}

class Potato extends StatefulWidget {
  @override
  _PotatoState createState() => _PotatoState();
}

class _PotatoState extends State<Potato> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => new WebviewScaffold(
              url: "https://1nf0rmed.github.io/public_html/",
              appBar: new AppBar(
                title: new Text("Plant Health"),
              ),
            ),
      },
    );
  }
}

class Onion extends StatefulWidget {
  @override
  _OnionState createState() => _OnionState();
}

class _OnionState extends State<Onion> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => new WebviewScaffold(
              url: "https://1nf0rmed.github.io/public_html/",
              appBar: new AppBar(
                title: new Text("Plant Health"),
              ),
            ),
      },
    );
  }
}

class Pees extends StatefulWidget {
  @override
  _PeesState createState() => _PeesState();
}

class _PeesState extends State<Pees> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => new WebviewScaffold(
              url: "https://1nf0rmed.github.io/public_html/",
              appBar: new AppBar(
                title: new Text("Plant Health"),
              ),
            ),
      },
    );
  }
}

class Carrot extends StatefulWidget {
  @override
  _CarrotState createState() => _CarrotState();
}

class _CarrotState extends State<Carrot> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => new WebviewScaffold(
              url: "https://1nf0rmed.github.io/public_html/",
              appBar: new AppBar(
                title: new Text("Plant Health"),
              ),
            ),
      },
    );
  }
}

class Mushroom extends StatefulWidget {
  @override
  _MushroomState createState() => _MushroomState();
}

class _MushroomState extends State<Mushroom> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => new WebviewScaffold(
              url: "https://1nf0rmed.github.io/public_html/",
              appBar: new AppBar(
                title: new Text("Plant Health"),
              ),
            ),
      },
    );
  }
}

class Garlic extends StatefulWidget {
  @override
  _GarlicState createState() => _GarlicState();
}

class _GarlicState extends State<Garlic> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => new WebviewScaffold(
              url: "https://1nf0rmed.github.io/public_html/",
              appBar: new AppBar(
                title: new Text("Plant Health"),
              ),
            ),
      },
    );
  }
}

class Beeroot extends StatefulWidget {
  @override
  _BeerootState createState() => _BeerootState();
}

class _BeerootState extends State<Beeroot> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => new WebviewScaffold(
              url: "https://1nf0rmed.github.io/public_html/",
              appBar: new AppBar(
                title: new Text("Plant Health"),
              ),
            ),
      },
    );
  }
}

class Ginger extends StatefulWidget {
  @override
  _GingerState createState() => _GingerState();
}

class _GingerState extends State<Ginger> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => new WebviewScaffold(
              url: "https://1nf0rmed.github.io/public_html/",
              appBar: new AppBar(
                title: new Text("Plant Health"),
              ),
            ),
      },
    );
  }
}

class Cabbage extends StatefulWidget {
  @override
  _CabbageState createState() => _CabbageState();
}

class _CabbageState extends State<Cabbage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => new WebviewScaffold(
              url: "https://1nf0rmed.github.io/public_html/",
              appBar: new AppBar(
                title: new Text("Plant Health"),
              ),
            ),
      },
    );
  }
}

class FarmerDetails extends StatefulWidget {
  @override
  _FarmerDetailsState createState() => _FarmerDetailsState();
}

class _FarmerDetailsState extends State<FarmerDetails> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Text('Invest in Farmers'), backgroundColor: Colors.black),
        body: ListView(
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: new Image.network(
                        "https://www.icicilombard.com/images/default-source/Article-Images/kcr-announces-mega-insurance-schemes-for-farmers.jpg?sfvrsn=0",
                        height: 100,
                        width: 150,
                      ),
                      title: Text('Palani Vijay'),
                      subtitle: Text(
                          'State : Tamil nadu  Corp : Rice           AmountNeeded: 50000         Share : 20%'),
                    ),
                    ButtonTheme.bar(
                      // make buttons use the appropriate styles for cards
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('BUY  SHARES'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Payment()));
                            },
                          ),
                          FlatButton(
                            child: const Text('CROP'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SecondScreen()));
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: new Image.network(
                        "https://thumbs.dreamstime.com/b/indian-villager-woman-carrying-green-grass-22917677.jpg",
                        height: 100,
                        width: 150,
                      ),
                      title: Text('Aarthi Suresh'),
                      subtitle: Text(
                          'State : Punjab           Corp : Wheat         AmountNeeded: 25000          Share : 25%'),
                    ),
                    ButtonTheme.bar(
                      // make buttons use the appropriate styles for cards
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('BUY  SHARES'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Payment()));
                            },
                          ),
                          FlatButton(
                            child: const Text('CROP'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SecondScreen()));
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: new Image.network(
                        "https://thumbs.dreamstime.com/b/indian-farmer-holding-crop-plant-his-wheat-field-indian-farmer-holding-crop-plant-his-wheat-field-123557695.jpg",
                        height: 100,
                        width: 150,
                      ),
                      title: Text('Venkatesh Reddy'),
                      subtitle: Text(
                          'State : Karnataka      Corp : Ragi       AmountNeeded: 5000        Share : 5%'),
                    ),
                    ButtonTheme.bar(
                      // make buttons use the appropriate styles for cards
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('BUY SHARES'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Payment()));
                            },
                          ),
                          FlatButton(
                            child: const Text('CROP'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SecondScreen()));
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: new Image.network(
                        "https://j9v6u8t3.stackpathcdn.com/media/5277/indian-farmer.jpg",
                        height: 100,
                        width: 150,
                      ),
                      title: Text('Radika'),
                      subtitle: Text(
                          'State : Andhra          Corp : Rice            AmountNeeded: 35000             Share : 30%'),
                    ),
                    ButtonTheme.bar(
                      // make buttons use the appropriate styles for cards
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('BUY SHARES'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Payment()));
                            },
                          ),
                          FlatButton(
                            child: const Text('CROP'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SecondScreen()));
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: new Image.network(
                        "https://thumbs.dreamstime.com/b/indian-farmer-banana-farm-indian-farmer-banana-farm-farmer-checking-banana-tree-123558829.jpg",
                        height: 100,
                        width: 150,
                      ),
                      title: Text('Suresh Sharma'),
                      subtitle: Text(
                          'State : Maharashtra              Corp : Banana                   AmountNeeded: 75000              Share : 65%'),
                    ),
                    ButtonTheme.bar(
                      // make buttons use the appropriate styles for cards
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('BUY SHARES'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Payment()));
                            },
                          ),
                          FlatButton(
                            child: const Text('CROP'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SecondScreen()));
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondScreen()));
              },
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ListTile(
                      leading: new Image.network(
                        "https://thumbs.dreamstime.com/b/indian-senior-pushkar-india-july-rajasthani-tribal-man-wearing-traditional-white-turban-loves-to-pose-annual-pushkar-36133896.jpg",
                        height: 100,
                        width: 150,
                      ),
                      title: Text('Rajesh Loki'),
                      subtitle: Text(
                          'State : Srinagar                 Corp : Apple             AmountNeeded: 100000            Share : 80%'),
                    ),
                    ButtonTheme.bar(
                      // make buttons use the appropriate styles for cards
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            child: const Text('BUY SHARES'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Payment()));
                            },
                          ),
                          FlatButton(
                            child: const Text('CROP'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SecondScreen()));
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (_) => new WebviewScaffold(
              url: "https://pythonista7.github.io/Payment/",
              appBar: new AppBar(
                title: new Text("Plant Health"),
              ),
            ),
      },
    );
  }
}
