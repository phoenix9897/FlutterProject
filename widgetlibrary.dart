import 'package:flutter/material.dart';
// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers
import 'package:flutter/services.dart';
import 'package:flutter_application_15102/4MarketScreen.dart';
import 'package:flutter_application_15102/6NewProductScreen.dart';
import 'package:flutter_application_15102/5SearchScreen.dart';
import 'package:flutter_application_15102/7ProfileScreen.dart';

void sayhi() {
  print("hi");
}

List<String> list = <String>['One', 'Two', 'Three', 'Four'];
int i = 0;

class ElevatedCardExample extends StatelessWidget {
  const ElevatedCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Card(
        elevation: 4,
        child: SizedBox(
          width: 300,
          height: 100,
          child: Center(child: Text('Elevated Card')),
        ),
      ),
    );
  }
}

class FilledCardExample extends StatelessWidget {
  const FilledCardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        elevation: 2,
        child: Container(
          width: 300,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 0, 0, 0)),
            borderRadius: const BorderRadius.all(Radius.circular(35)),
          ),
          child: const Center(child: Text('Filled Card')),
        ),
      ),
    );
  }
}

class ListTileExample extends StatelessWidget {
  final int id;
  final String aciklama;
  final Icon iconLeading;
  const ListTileExample(
      {super.key,
      required this.id,
      required this.aciklama,
      required this.iconLeading});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 410,
      height: 50,
      child: ListTile(
          title: Text("Listenin $id . elamani "),
          subtitle: Text(aciklama),
          leading: iconLeading,
          trailing: const Icon(Icons.backpack)),
    );
  }
}

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent.shade200,
      child: ListView(
        shrinkWrap: true,
        reverse: true,
        padding: const EdgeInsets.all(10),
        children: [
          Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
                //<-- SEE HERE
                side: const BorderSide(
                  width: 3,
                  color: Colors.black26,
                ),
              ),
              color: const Color.fromARGB(255, 133, 233, 255),
              child: const ListTile(
                title: Text("List Item 1"),
              )),
          Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
                //<-- SEE HERE
                side: const BorderSide(
                  width: 3,
                  color: Colors.black26,
                ),
              ),
              color: const Color.fromARGB(255, 133, 233, 255),
              child: const ListTile(
                title: Text("List Item 1"),
              )),
          Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
                //<-- SEE HERE
                side: const BorderSide(
                  width: 3,
                  color: Colors.black26,
                ),
              ),
              color: const Color.fromARGB(255, 133, 233, 255),
              child: const ListTile(
                title: Text("List Item 1"),
              )),
          Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
                //<-- SEE HERE
                side: const BorderSide(
                  width: 3,
                  color: Colors.black26,
                ),
              ),
              color: const Color.fromARGB(255, 133, 233, 255),
              child: const ListTile(
                title: Text("List Item 1"),
              )),
        ],
      ),
    );
  }
}

class CustomScrollExample extends StatelessWidget {
  const CustomScrollExample({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildListDelegate(
              <Widget>[
                const ScaffoldMessengerExamples(),
                Container(
                  child: const TextFieldExample(
                    text: "Isim",
                  ),
                ),
                const SizedBox(height: 5),
                const TextFieldExample(
                  text: "Soyisim",
                ),
                const SizedBox(height: 5),
                const ListTileExample(
                  id: 1,
                  iconLeading: Icon(Icons.shop),
                  aciklama: "Alisveris Yapılacak",
                ),
                const SizedBox(height: 5),
                const ListTileExample(
                  id: 2,
                  iconLeading: Icon(Icons.car_rental),
                  aciklama: " Araba Yikanacak",
                ),
                const SizedBox(height: 5),
                const ListTileExample(
                  id: 3,
                  iconLeading: Icon(Icons.house),
                  aciklama: "Eve Gidilecek ",
                ),
                const SizedBox(height: 5),
                const ListTileExample(
                  id: 4,
                  iconLeading: Icon(Icons.school),
                  aciklama: "Okula Gidilecek",
                ),
                const SizedBox(height: 5),
                const ListTileExample(
                  id: 5,
                  iconLeading: Icon(Icons.table_bar),
                  aciklama: "Masa Alinacak",
                ),
                const SizedBox(height: 5),
                const ListTileExample(
                  id: 6,
                  iconLeading: Icon(Icons.computer),
                  aciklama: "Bilgisayar Tamiri",
                ),
                const SizedBox(height: 5),
                const ListTileExample(
                  id: 6,
                  iconLeading: Icon(Icons.computer),
                  aciklama: "Bilgisayar Tamiri",
                ),
                const SizedBox(height: 5),
                const ListTileExample(
                  id: 6,
                  iconLeading: Icon(Icons.computer),
                  aciklama: "Bilgisayar Tamiri",
                ),
                const SizedBox(height: 5),
                const Text('Domestic life was never quite my style'),
                const Text('When you smile, you knock me out, I fall apart'),
                const Text('And I thought I was so smart'),
                const SizedBox(height: 20),
                const DropdownButtonExample(),
                const ScaffoldMessengerExamples(),
                //const SizedBoxExamples(),
                //const RowExpandedFlexExampleSpacer(),
                //const Spacer(),
                //const GridViewExample(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class AppbarExamples extends StatelessWidget {
  const AppbarExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: <Widget>[
        const IconButton(
          onPressed: sayhi,
          icon: Icon(Icons.menu, size: 38),
        ),
        Container(
          width: 35,
          height: 15,
        ),
        const IconButton(
          onPressed: sayhi,
          icon: Icon(Icons.person, size: 38),
        ),
        Container(
          width: 35,
          height: 15,
        ),
        const IconButton(
          onPressed: sayhi,
          icon: Icon(Icons.home, size: 38),
        ),
        Container(
          width: 35,
          height: 15,
        ),
        const IconButton(
          onPressed: sayhi,
          icon: Icon(Icons.settings, size: 38),
        ),
        Container(
          width: 35,
          height: 15,
        ),
        const IconButton(
          onPressed: sayhi,
          icon: Icon(Icons.help, size: 38),
        ),
        Container(
          width: 15,
          height: 15,
        ),
      ],
    );
  }
}

class RowExamples extends StatelessWidget {
  const RowExamples({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: const [
            Icon(
              Icons.access_alarm_outlined,
              size: 45,
            ),
            ElevatedButton(onPressed: sayhi, child: Text("Clock")),
          ],
        ),
        Column(
          children: const [
            Icon(
              Icons.account_box_sharp,
              size: 45,
            ),
            ElevatedButton(onPressed: sayhi, child: Text("Contact")),
          ],
        ),
        Column(
          children: const [
            Icon(
              Icons.add_box,
              size: 45,
            ),
            ElevatedButton(onPressed: sayhi, child: Text("Add")),
          ],
        ),
        CustomScrollView(
          shrinkWrap: true,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20.0),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    const Text("I'm dedicating every day to you"),
                    const Text('Domestic life was never quite my style'),
                    const Text(
                        'When you smile, you knock me out, I fall apart'),
                    const Text('And I thought I was so smart'),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class TextFieldExample extends StatelessWidget {
  final String text;
  const TextFieldExample({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      //onChanged: ,

      decoration: InputDecoration(
        border: InputBorder.none,
        //labelText: '$text ',
        hintText: '$text ',
      ),
    );
  }
}

class SizedBoxExamples extends StatelessWidget {
  const SizedBoxExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 100,
      height: 50,
      child: Text("this is tittle"),
    );
  }
}

class RowExpandedFlexExampleSpacer extends StatelessWidget {
  const RowExpandedFlexExampleSpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Column(
            children: const <Widget>[Text("Hello World")],
          ),
        ),
        const Spacer(),
        Expanded(
          flex: 4,
          child: Column(
            children: const <Widget>[
              Text(
                "This is a long text this is a long test this is This is a long text this is a long test this is This is a long text this is a long test this is This is a long text this is a long test this is This is a long text this is a long test this is This is a long text this is a long test this is ",
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
        Expanded(flex: 2, child: Container()),
      ],
    );
  }
}

class LinearGradientExample extends StatelessWidget {
  const LinearGradientExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 411,
      height: 500,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment(1, 1),
          colors: <Color>[
            Color(0xffe16b5c),
            Color(0xfff39060),
            Color(0xffffb56b),
          ], // Gradient from https://learnui.design/tools/gradient-generator.html
          tileMode: TileMode.mirror,
        ),
      ),
      //child: Container(height: 0,)
      /*const Center(
        child: Text(
          'From Night to Day',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),*/
    );
  }
}

class GridViewExample extends StatelessWidget {
  const GridViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: const EdgeInsets.all(20),
          sliver: SliverGrid.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              for (i = 0; i < 8; i++) Containergridwiev(id: i % 4 + 1),
            ],
          ),
        ),
      ],
    );
  }
}

class Containergridwiev extends StatelessWidget {
  final int id;
  const Containergridwiev({
    super.key,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.green[id * 100],
      child: const Text("He'd have you all unravel at the"),
    );
  }
}

class BaselineExamples extends StatelessWidget {
  const BaselineExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: Colors.teal,
      child: Baseline(
        baseline: 225,
        baselineType: TextBaseline.alphabetic,
        child: Container(
          width: 50,
          height: 50,
          color: Colors.red,
        ),
      ),
    );
  }
}

class RepaintBoundaryExample extends StatelessWidget {
  const RepaintBoundaryExample({super.key});

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Container(
        width: 150,
        height: 150,
        color: Colors.orange,
      ),
    );
  }
}
/**/
class AutocompleteBasicExample extends StatelessWidget {
  const AutocompleteBasicExample({super.key});

  static const List<String> _kOptions = <String>[
    'aardvark',
    'bobcat',
    'chameleon',
  ];

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return _kOptions.where((String option) {
          return option.contains(textEditingValue.text.toLowerCase());
        });
      },
      onSelected: (String selection) {
        debugPrint('You just selected $selection');
      },
    );
  }
}
/**/
class NavRailExample extends StatefulWidget {
  const NavRailExample({super.key});

  @override
  State<NavRailExample> createState() => _NavRailExampleState();
}

class _NavRailExampleState extends State<NavRailExample> {
  int _selectedIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.all;
  bool showLeading = false;
  bool showTrailing = false;
  double groupAligment = -1.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
            selectedIndex: _selectedIndex,
            groupAlignment: groupAligment,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            labelType: labelType,
            leading: showLeading
                ? FloatingActionButton(
                    elevation: 0,
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    child: const Icon(Icons.add),
                  )
                : const SizedBox(),
            trailing: showTrailing
                ? IconButton(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    icon: const Icon(Icons.more_horiz_rounded),
                  )
                : const SizedBox(),
            destinations: const <NavigationRailDestination>[
              NavigationRailDestination(
                icon: Icon(Icons.favorite_border),
                selectedIcon: Icon(Icons.favorite),
                label: Text('First'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.bookmark_border),
                selectedIcon: Icon(Icons.book),
                label: Text('Second'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.star_border),
                selectedIcon: Icon(Icons.star),
                label: Text('Third'),
              ),
            ],
          ),
          const VerticalDivider(thickness: 1, width: 1),
          // This is the main content.
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('selectedIndex: $_selectedIndex'),
                const SizedBox(height: 20),
                Text('Label type: ${labelType.name}'),
                const SizedBox(height: 10),
                OverflowBar(
                  spacing: 10.0,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          labelType = NavigationRailLabelType.none;
                        });
                      },
                      child: const Text('None'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          labelType = NavigationRailLabelType.selected;
                        });
                      },
                      child: const Text('Selected'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          labelType = NavigationRailLabelType.all;
                        });
                      },
                      child: const Text('All'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Text('Group alignment: $groupAligment'),
                const SizedBox(height: 10),
                OverflowBar(
                  spacing: 10.0,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          groupAligment = -1.0;
                        });
                      },
                      child: const Text('Top'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          groupAligment = 0.0;
                        });
                      },
                      child: const Text('Center'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          groupAligment = 1.0;
                        });
                      },
                      child: const Text('Bottom'),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                OverflowBar(
                  spacing: 10.0,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showLeading = !showLeading;
                        });
                      },
                      child:
                          Text(showLeading ? 'Hide Leading' : 'Show Leading'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showTrailing = !showTrailing;
                        });
                      },
                      child: Text(
                          showTrailing ? 'Hide Trailing' : 'Show Trailing'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class FadButton extends StatefulWidget {
  const FadButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  final VoidCallback onPressed;
  final Widget child;

  @override
  State<FadButton> createState() => _FadButtonState();
}

class _FadButtonState extends State<FadButton> {
  bool _focused = false;
  bool _hovering = false;
  bool _on = false;
  late final Map<Type, Action<Intent>> _actionMap;
  final Map<ShortcutActivator, Intent> _shortcutMap =
      const <ShortcutActivator, Intent>{
    SingleActivator(LogicalKeyboardKey.keyX): ActivateIntent(),
  };

  @override
  void initState() {
    super.initState();
    _actionMap = <Type, Action<Intent>>{
      ActivateIntent: CallbackAction<Intent>(
        onInvoke: (Intent intent) => _toggleState(),
      ),
    };
  }

  Color get color {
    Color baseColor = Colors.lightBlue;
    if (_focused) {
      baseColor = Color.alphaBlend(Colors.black.withOpacity(0.25), baseColor);
    }
    if (_hovering) {
      baseColor = Color.alphaBlend(Colors.black.withOpacity(0.1), baseColor);
    }
    return baseColor;
  }

  void _toggleState() {
    setState(() {
      _on = !_on;
    });
  }

  void _handleFocusHighlight(bool value) {
    setState(() {
      _focused = value;
    });
  }

  void _handleHoveHighlight(bool value) {
    setState(() {
      _hovering = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleState,
      child: FocusableActionDetector(
        actions: _actionMap,
        shortcuts: _shortcutMap,
        onShowFocusHighlight: _handleFocusHighlight,
        onShowHoverHighlight: _handleHoveHighlight,
        child: Row(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10.0),
              color: color,
              child: widget.child,
            ),
            Container(
              width: 30,
              height: 30,
              margin: const EdgeInsets.all(10.0),
              color: _on ? Colors.red : Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}

class ScaffoldMessengerExamples extends StatelessWidget {
  const ScaffoldMessengerExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            //width: 50, gives error?
            content: Text('A SnackBar has been shown.'),
          ),
        );
      },
      child: const Text('Show SnackBar'),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.black87),
      underline: Container(
        height: 3,
        color: Colors.black87,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _lightIsOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: FractionalOffset.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.lightbulb_outline,
                color: _lightIsOn ? Colors.yellow.shade600 : Colors.black,
                size: 60,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  // Toggle light when tapped.
                  _lightIsOn = !_lightIsOn;
                });
              },
              child: Container(
                color: Colors.yellow.shade600,
                padding: const EdgeInsets.all(8),
                // Change button text when light changes state.
                child: Text(_lightIsOn ? 'TURN LIGHT OFF' : 'TURN LIGHT ON'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class KindaCodeDemo extends StatefulWidget {
  const KindaCodeDemo({Key? key}) : super(key: key);

  @override
  State<KindaCodeDemo> createState() => _KindaCodeDemoState();
}

class _KindaCodeDemoState extends State<KindaCodeDemo>
    with TickerProviderStateMixin {
  TabController? _tabController;

  final _tabViewChildren = [
    Container(
      //color: Colors.blue,
      child: MarketScreenState(),
    ),
    Container(
      //color: Colors.red,
      child: const Center(
        child: SearchScreens(),
      ),
    ),
    Container(
        //color: Colors.green,
        child: NewProductScreen()),
    Container(
        //color: Colors.green,
        child: ProfileScreen())
  ];

  // initialize the tab controller
  @override
  void initState() {
    _tabController =
        TabController(length: _tabViewChildren.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 37, 107, 91),
        toolbarHeight: 0,
        // implement the tab bar
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              icon: Icon(Icons.list_alt_outlined),
            ),
            Tab(
              icon: Icon(Icons.search),
            ),
            Tab(
              icon: Icon(Icons.add_box_outlined),
            ),
            Tab(
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          // implement the tab view
          TabBarView(
            controller: _tabController,
            children: _tabViewChildren,
          ),
          // implement the dots indicator
          /*Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: 0,
            child: Container(
              /*
              height: 100,
              color: Colors.black54,
              alignment: Alignment.center,
              child: TabPageSelector(
                controller: _tabController,
                indicatorSize: 20,
                selectedColor: Colors.white,
                color: Colors.grey,
              ),*/
            ),
          ),*/
        ],
      ),
    );
  }
}

class FlowMenu extends StatefulWidget {
  const FlowMenu({super.key});

  @override
  State<FlowMenu> createState() => _FlowMenuState();
}

class _FlowMenuState extends State<FlowMenu>
    with SingleTickerProviderStateMixin {
  late AnimationController menuAnimation;
  IconData lastTapped = Icons.notifications;
  final List<IconData> menuItems = <IconData>[
    Icons.home,
    Icons.new_releases,
    Icons.notifications,
    Icons.settings,
    Icons.menu,
  ];

  void _updateMenu(IconData icon) {
    if (icon != Icons.menu) {
      setState(() => lastTapped = icon);
    }
  }

  @override
  void initState() {
    super.initState();
    menuAnimation = AnimationController(
      duration: const Duration(milliseconds: 250),
      vsync: this,
    );
  }

  Widget flowMenuItem(IconData icon) {
    const double buttonDiameter = 55;
    //MediaQuery.of(context).size.width / menuItems.length;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
      child: RawMaterialButton(
        fillColor: lastTapped == icon ? Colors.amber[700] : Colors.blue,
        splashColor: Colors.amber[100],
        shape: const CircleBorder(),
        constraints:
            BoxConstraints.tight(const Size(buttonDiameter, buttonDiameter)),
        onPressed: () {
          _updateMenu(icon);
          menuAnimation.status == AnimationStatus.completed
              ? menuAnimation.reverse()
              : menuAnimation.forward();
        },
        child: Icon(
          icon,
          color: Colors.white,
          size: 45.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Flow(
      delegate: FlowMenuDelegate(menuAnimation: menuAnimation),
      children:
          menuItems.map<Widget>((IconData icon) => flowMenuItem(icon)).toList(),
    );
  }
}

class FlowMenuDelegate extends FlowDelegate {
  FlowMenuDelegate({required this.menuAnimation})
      : super(repaint: menuAnimation);

  final Animation<double> menuAnimation;

  @override
  bool shouldRepaint(FlowMenuDelegate oldDelegate) {
    return menuAnimation != oldDelegate.menuAnimation;
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    double dx = 0.0;
    for (int i = 0; i < context.childCount; ++i) {
      dx = context.getChildSize(i)!.width * i;
      context.paintChild(
        i,
        transform: Matrix4.translationValues(
          dx * menuAnimation.value,
          0,
          0,
        ),
      );
    }
  }
}

class DrawerExample extends StatelessWidget {
  const DrawerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("a")),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
