import 'package:animated_background/animated_background.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mongodb/toggleBUtton.dart';
import 'package:multi_dropdown/multi_dropdown.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  var colorLightGreen = Color.fromRGBO(0, 237, 100, 1);
  var colorDarkGreen = Color.fromRGBO(2, 52, 48, 1);
  var colorForestGreen = Color.fromRGBO(0, 104, 74, 1);
  var colorSlateGreen = Color.fromRGBO(0, 30, 43, 1);
  var formDetails = 0.obs;
  final controller = MultiSelectController<User>();
  final controller1 = MultiSelectController<User>();
  final controller2 = MultiSelectController<User>();
  final controller3 = MultiSelectController<User>();
  final controller4 = MultiSelectController<User>();
  final controller5 = MultiSelectController<User>();
  final controller6 = MultiSelectController<User>();
  final controller7 = MultiSelectController<User>();

  var items = [
    DropdownItem(label: 'DC1', value: User(name: 'DC1', id: 1)),
    DropdownItem(label: 'DC2', value: User(name: 'DC2', id: 6)),
    DropdownItem(label: 'DC3', value: User(name: 'DC3', id: 2)),
    DropdownItem(label: 'DC4', value: User(name: 'DC4', id: 3)),
    DropdownItem(label: 'DC5', value: User(name: 'DC5', id: 4)),
    DropdownItem(label: 'DC6', value: User(name: 'DC6', id: 5)),
    DropdownItem(label: 'DC7', value: User(name: 'DC7', id: 7)),
    DropdownItem(label: 'DC8', value: User(name: 'DC8', id: 8)),
  ];
  var items1 = [
    DropdownItem(label: 'SC1', value: User(name: 'SC1', id: 1)),
    DropdownItem(label: 'SC2', value: User(name: 'SC2', id: 6)),
    DropdownItem(label: 'SC3', value: User(name: 'SC3', id: 2)),
    DropdownItem(label: 'SC4', value: User(name: 'SC4', id: 3)),
    DropdownItem(label: 'SC5', value: User(name: 'SC5', id: 4)),
    DropdownItem(label: 'SC6', value: User(name: 'SC6', id: 5)),
    DropdownItem(label: 'SC7', value: User(name: 'SC7', id: 7)),
    DropdownItem(label: 'SC8', value: User(name: 'SC8', id: 8)),
  ];
  var items2 = [
    DropdownItem(label: 'T1', value: User(name: 'T1', id: 1)),
    DropdownItem(label: 'T2', value: User(name: 'T2', id: 6)),
    DropdownItem(label: 'T3', value: User(name: 'T3', id: 2)),
    DropdownItem(label: 'T4', value: User(name: 'T4', id: 3)),
    DropdownItem(label: 'T5', value: User(name: 'T5', id: 4)),
    DropdownItem(label: 'T6', value: User(name: 'T6', id: 5)),
    DropdownItem(label: 'T7', value: User(name: 'T7', id: 7)),
    DropdownItem(label: 'T8', value: User(name: 'T8', id: 8)),
  ];
  var items3 = [
    DropdownItem(label: 'A1', value: User(name: 'A1', id: 1)),
    DropdownItem(label: 'A2', value: User(name: 'A2', id: 6)),
    DropdownItem(label: 'A3', value: User(name: 'A3', id: 2)),
    DropdownItem(label: 'A4', value: User(name: 'A4', id: 3)),
    DropdownItem(label: 'A5', value: User(name: 'A5', id: 4)),
    DropdownItem(label: 'A6', value: User(name: 'A6', id: 5)),
    DropdownItem(label: 'A7', value: User(name: 'A7', id: 7)),
    DropdownItem(label: 'A8', value: User(name: 'A8', id: 8)),
  ];
  var isHover = false;
  var isHover2 = false;
  clearAllFN(){
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: colorDarkGreen,
      body: AnimatedBackground(
        behaviour: RandomParticleBehaviour(
          options:  ParticleOptions(
            spawnMaxRadius: 5,
            spawnMinSpeed: 10.00,
            particleCount: 600,
            spawnMaxSpeed: 80,
            minOpacity: 0.1,
            spawnOpacity: 0.4,
            baseColor: colorLightGreen,
            image: Image(image: AssetImage('assets/Images/Flutter.png')),
          ),
        ),
        vsync: this,
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "lib/MongoDB_White.png",
                  width: 250,
                  height: 140,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                  child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.white,
                      ),
                      height: 50,
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ToggleButton(this.formDetails),
                      )),
                ),
                Obx(
                  () => formDetails.value == 0
                      ? Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10.0, bottom: 10),
                                child: Text(
                                  "Raw Data Download",
                                  style: TextStyle(
                                      fontSize: 28, fontWeight: FontWeight.w700),
                                ),
                              ),
                              SizedBox(
                                width: 300,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      MultiDropdown<User>(
                                        items: items,
                                        controller: controller,
                                        enabled: true,
                                        singleSelect: true,
                                        searchEnabled: false,
                                        chipDecoration: ChipDecoration(
                                          backgroundColor: colorLightGreen,
                                          wrap: true,
                                          runSpacing: 2,
                                          spacing: 10,
                                        ),
                                        fieldDecoration: FieldDecoration(
                                          hintText: 'Data Catalog',
                                          hintStyle: TextStyle(color: Colors.grey),
                                          showClearIcon: false,
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            borderSide:
                                                BorderSide(color: colorForestGreen),
                                          ),
                                          suffixIcon: SizedBox(
                                            width: 1,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            borderSide: const BorderSide(
                                              width: 3,
                                              color:
                                                  Color.fromRGBO(13, 162, 255, 1),
                                            ),
                                          ),
                                        ),
                                        dropdownDecoration:
                                            const DropdownDecoration(
                                          marginTop: 2,
                                          maxHeight: 500,
                                        ),
                                        dropdownItemDecoration:
                                            DropdownItemDecoration(
                                          selectedIcon: const Icon(Icons.check_box,
                                              color: Colors.green),
                                          disabledIcon: Icon(Icons.lock,
                                              color: Colors.grey.shade300),
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please select a country';
                                          }
                                          return null;
                                        },
                                        onSelectionChange: (selectedItems) {
                                          debugPrint(
                                              "OnSelectionChange: $selectedItems");
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 300,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      MultiDropdown<User>(
                                        items: items1,
                                        controller: controller1,
                                        enabled: true,
                                        singleSelect: true,
                                        searchEnabled: false,
                                        chipDecoration: ChipDecoration(
                                          backgroundColor: colorLightGreen,
                                          wrap: true,
                                          runSpacing: 2,
                                          spacing: 10,
                                        ),
                                        fieldDecoration: FieldDecoration(
                                          hintText: 'Schema Name',
                                          hintStyle: TextStyle(color: Colors.grey),
                                          showClearIcon: false,
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            borderSide:
                                                BorderSide(color: colorForestGreen),
                                          ),
                                          suffixIcon: SizedBox(
                                            width: 1,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            borderSide: const BorderSide(
                                              width: 3,
                                              color:
                                                  Color.fromRGBO(13, 162, 255, 1),
                                            ),
                                          ),
                                        ),
                                        dropdownDecoration:
                                            const DropdownDecoration(
                                          marginTop: 2,
                                          maxHeight: 500,
                                        ),
                                        dropdownItemDecoration:
                                            DropdownItemDecoration(
                                          selectedIcon: const Icon(Icons.check_box,
                                              color: Colors.green),
                                          disabledIcon: Icon(Icons.lock,
                                              color: Colors.grey.shade300),
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please select a country';
                                          }
                                          return null;
                                        },
                                        onSelectionChange: (selectedItems) {
                                          debugPrint(
                                              "OnSelectionChange: $selectedItems");
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 300,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      MultiDropdown<User>(
                                        items: items2,
                                        controller: controller2,
                                        enabled: true,
                                        singleSelect: true,
                                        searchEnabled: false,
                                        chipDecoration: ChipDecoration(
                                          backgroundColor: colorLightGreen,
                                          wrap: true,
                                          runSpacing: 2,
                                          spacing: 10,
                                        ),
                                        fieldDecoration: FieldDecoration(
                                          hintText: 'Table Name',
                                          hintStyle: TextStyle(color: Colors.grey),
                                          showClearIcon: false,
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            borderSide:
                                                BorderSide(color: colorForestGreen),
                                          ),
                                          suffixIcon: SizedBox(
                                            width: 1,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            borderSide: const BorderSide(
                                              width: 3,
                                              color:
                                                  Color.fromRGBO(13, 162, 255, 1),
                                            ),
                                          ),
                                        ),
                                        dropdownDecoration:
                                            const DropdownDecoration(
                                          marginTop: 2,
                                          maxHeight: 500,
                                        ),
                                        dropdownItemDecoration:
                                            DropdownItemDecoration(
                                          selectedIcon: const Icon(Icons.check_box,
                                              color: Colors.green),
                                          disabledIcon: Icon(Icons.lock,
                                              color: Colors.grey.shade300),
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please select a country';
                                          }
                                          return null;
                                        },
                                        onSelectionChange: (selectedItems) {
                                          debugPrint(
                                              "OnSelectionChange: $selectedItems");
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: Center(
                                      child: Text(
                                        "Dimensions",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: MultiDropdown<User>(
                                      items: items,
                                      controller: controller3,
                                      enabled: true,
                                      singleSelect: false,
                                      searchEnabled: false,
                                      chipDecoration: ChipDecoration(
                                        backgroundColor: Color.fromRGBO(228, 252, 247, 1),
                                        wrap: true,
                                        runSpacing: 2,
                                        spacing: 10,
                                      ),
                                      fieldDecoration: FieldDecoration(
                                        hintText: 'Add',
                                        hintStyle:
                                            const TextStyle(color: Colors.black87),
                                        showClearIcon: false,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          borderSide:
                                              const BorderSide(color: Colors.grey),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          borderSide: const BorderSide(
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                      dropdownDecoration: const DropdownDecoration(
                                        marginTop: 2,
                                        maxHeight: 500,
                                      ),
                                      dropdownItemDecoration:
                                          DropdownItemDecoration(
                                        selectedIcon: const Icon(Icons.check_box,
                                            color: Colors.green),
                                        disabledIcon: Icon(Icons.lock,
                                            color: Colors.grey.shade300),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please select a country';
                                        }
                                        return null;
                                      },
                                      onSelectionChange: (selectedItems) {
                                        debugPrint(
                                            "OnSelectionChange: $selectedItems");
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: Center(
                                      child: Text(
                                        "Measures",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: MultiDropdown<User>(
                                      items: items,
                                      controller: controller4,
                                      enabled: true,
                                      singleSelect: false,
                                      searchEnabled: false,
                                      chipDecoration: ChipDecoration(
                                        backgroundColor: Color.fromRGBO(228, 252, 247, 1),
                                        wrap: true,
                                        runSpacing: 2,
                                        spacing: 10,
                                      ),
                                      fieldDecoration: FieldDecoration(
                                        hintText: 'Add',
                                        hintStyle:
                                            const TextStyle(color: Colors.black87),
                                        showClearIcon: false,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          borderSide:
                                              const BorderSide(color: Colors.grey),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          borderSide: const BorderSide(
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                      dropdownDecoration: const DropdownDecoration(
                                        marginTop: 2,
                                        maxHeight: 500,
                                      ),
                                      dropdownItemDecoration:
                                          DropdownItemDecoration(
                                        selectedIcon: const Icon(Icons.check_box,
                                            color: Colors.green),
                                        disabledIcon: Icon(Icons.lock,
                                            color: Colors.grey.shade300),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please select a country';
                                        }
                                        return null;
                                      },
                                      onSelectionChange: (selectedItems) {
                                        debugPrint(
                                            "OnSelectionChange: $selectedItems");
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: Center(
                                      child: Text(
                                        "Filters",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: MultiDropdown<User>(
                                      items: items,
                                      controller: controller5,
                                      enabled: true,
                                      singleSelect: false,
                                      searchEnabled: false,
                                      chipDecoration: ChipDecoration(
                                        backgroundColor: Color.fromRGBO(228, 252, 247, 1),
                                        wrap: true,
                                        runSpacing: 2,
                                        spacing: 10,
                                      ),
                                      fieldDecoration: FieldDecoration(
                                        hintText: 'Add',
                                        hintStyle:
                                            const TextStyle(color: Colors.black87),
                                        showClearIcon: false,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          borderSide:
                                              const BorderSide(color: Colors.grey),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          borderSide: const BorderSide(
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                      dropdownDecoration: const DropdownDecoration(
                                        marginTop: 2,
                                        maxHeight: 500,
                                      ),
                                      dropdownItemDecoration:
                                          DropdownItemDecoration(
                                        selectedIcon: const Icon(Icons.check_box,
                                            color: Colors.green),
                                        disabledIcon: Icon(Icons.lock,
                                            color: Colors.grey.shade300),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please select a country';
                                        }
                                        return null;
                                      },
                                      onSelectionChange: (selectedItems) {
                                        debugPrint(
                                            "OnSelectionChange: $selectedItems");
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10.0, bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    AnimatedContainer(
                                        height: 40,
                                        duration: Duration(milliseconds: 200),
                                        decoration: (!isHover)
                                            ? BoxDecoration(
                                                color: Colors.amberAccent
                                                    .withOpacity(.3),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                    width: 1, color: Colors.black))
                                            : BoxDecoration(
                                                color: colorLightGreen,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                    width: 1,
                                                    color: colorLightGreen)),
                                        padding: EdgeInsets.all(5),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0, right: 20.0),
                                            child: InkWell(
                                              onTap: () {},
                                              child: Text(
                                                "View",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700),
                                              ),
                                              onHover: (val) {
                                                print("Val--->{}$val");
                                                setState(() {
                                                  isHover = val;
                                                });
                                              },
                                            ),
                                          ),
                                          /*val--->true when user brings in mouse
               val---> false when brings out his mouse*/
                                        )),
                                    AnimatedContainer(
                                        height: 40,
                                        duration: Duration(milliseconds: 200),
                                        decoration: (!isHover2)
                                            ? BoxDecoration(
                                                color:
                                                    colorLightGreen.withOpacity(.3),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                    width: 1, color: Colors.black))
                                            : BoxDecoration(
                                                color: colorLightGreen,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                    width: 1,
                                                    color: colorLightGreen)),
                                        padding: EdgeInsets.all(5),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0, right: 20.0),
                                            child: InkWell(
                                              onTap: () {},
                                              child: Text(
                                                "Export",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700),
                                              ),
                                              onHover: (val) {
                                                print("Val--->{}$val");
                                                setState(() {
                                                  isHover2 = val;
                                                });
                                              },
                                            ),
                                          ),
                                          /*val--->true when user brings in mouse
               val---> false when brings out his mouse*/
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                          width: 500,
                        )
                      : Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10.0, bottom: 10),
                                child: Text(
                                  "Visualization",
                                  style: TextStyle(
                                      fontSize: 28, fontWeight: FontWeight.w700),
                                ),
                              ),
                              SizedBox(
                                width: 300,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      MultiDropdown<User>(
                                        items: items,
                                        controller: controller,
                                        enabled: true,
                                        singleSelect: true,
                                        searchEnabled: false,
                                        chipDecoration: ChipDecoration(
                                          backgroundColor: colorLightGreen,
                                          wrap: true,
                                          runSpacing: 2,
                                          spacing: 10,
                                        ),
                                        fieldDecoration: FieldDecoration(
                                          hintText: 'Data Catalog',
                                          hintStyle: TextStyle(color: Colors.grey),
                                          showClearIcon: false,
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            borderSide:
                                                BorderSide(color: colorForestGreen),
                                          ),
                                          suffixIcon: SizedBox(
                                            width: 1,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            borderSide: const BorderSide(
                                              width: 3,
                                              color:
                                                  Color.fromRGBO(13, 162, 255, 1),
                                            ),
                                          ),
                                        ),
                                        dropdownDecoration:
                                            const DropdownDecoration(
                                          marginTop: 2,
                                          maxHeight: 500,
                                        ),
                                        dropdownItemDecoration:
                                            DropdownItemDecoration(
                                          selectedIcon: const Icon(Icons.check_box,
                                              color: Colors.green),
                                          disabledIcon: Icon(Icons.lock,
                                              color: Colors.grey.shade300),
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please select a country';
                                          }
                                          return null;
                                        },
                                        onSelectionChange: (selectedItems) {
                                          debugPrint(
                                              "OnSelectionChange: $selectedItems");
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 300,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      MultiDropdown<User>(
                                        items: items1,
                                        controller: controller1,
                                        enabled: true,
                                        singleSelect: true,
                                        searchEnabled: false,
                                        chipDecoration: ChipDecoration(
                                          backgroundColor: colorLightGreen,
                                          wrap: true,
                                          runSpacing: 2,
                                          spacing: 10,
                                        ),
                                        fieldDecoration: FieldDecoration(
                                          hintText: 'Schema Name',
                                          hintStyle: TextStyle(color: Colors.grey),
                                          showClearIcon: false,
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            borderSide:
                                                BorderSide(color: colorForestGreen),
                                          ),
                                          suffixIcon: SizedBox(
                                            width: 1,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            borderSide: const BorderSide(
                                              width: 3,
                                              color:
                                                  Color.fromRGBO(13, 162, 255, 1),
                                            ),
                                          ),
                                        ),
                                        dropdownDecoration:
                                            const DropdownDecoration(
                                          marginTop: 2,
                                          maxHeight: 500,
                                        ),
                                        dropdownItemDecoration:
                                            DropdownItemDecoration(
                                          selectedIcon: const Icon(Icons.check_box,
                                              color: Colors.green),
                                          disabledIcon: Icon(Icons.lock,
                                              color: Colors.grey.shade300),
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please select a country';
                                          }
                                          return null;
                                        },
                                        onSelectionChange: (selectedItems) {
                                          debugPrint(
                                              "OnSelectionChange: $selectedItems");
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 300,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      MultiDropdown<User>(
                                        items: items2,
                                        controller: controller2,
                                        enabled: true,
                                        singleSelect: true,
                                        searchEnabled: false,
                                        chipDecoration: ChipDecoration(
                                          backgroundColor: colorLightGreen,
                                          wrap: true,
                                          runSpacing: 2,
                                          spacing: 10,
                                        ),
                                        fieldDecoration: FieldDecoration(
                                          hintText: 'View Name',
                                          hintStyle: TextStyle(color: Colors.grey),
                                          showClearIcon: false,
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            borderSide:
                                                BorderSide(color: colorForestGreen),
                                          ),
                                          suffixIcon: SizedBox(
                                            width: 1,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(12),
                                            borderSide: const BorderSide(
                                              width: 3,
                                              color:
                                                  Color.fromRGBO(13, 162, 255, 1),
                                            ),
                                          ),
                                        ),
                                        dropdownDecoration:
                                            const DropdownDecoration(
                                          marginTop: 2,
                                          maxHeight: 500,
                                        ),
                                        dropdownItemDecoration:
                                            DropdownItemDecoration(
                                          selectedIcon: const Icon(Icons.check_box,
                                              color: Colors.green),
                                          disabledIcon: Icon(Icons.lock,
                                              color: Colors.grey.shade300),
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please select a country';
                                          }
                                          return null;
                                        },
                                        onSelectionChange: (selectedItems) {
                                          debugPrint(
                                              "OnSelectionChange: $selectedItems");
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: Center(
                                      child: Text(
                                        "KPI's",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: MultiDropdown<User>(
                                      items: items,
                                      controller: controller3,
                                      enabled: true,
                                      singleSelect: false,
                                      searchEnabled: false,
                                      chipDecoration: ChipDecoration(
                                        backgroundColor: Color.fromRGBO(228, 252, 247, 1),
                                        wrap: true,
                                        runSpacing: 2,
                                        spacing: 10,
                                      ),
                                      fieldDecoration: FieldDecoration(
                                        hintText: 'Add',
                                        hintStyle:
                                            const TextStyle(color: Colors.black87),
                                        showClearIcon: false,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          borderSide:
                                              const BorderSide(color: Colors.grey),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          borderSide: const BorderSide(
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                      dropdownDecoration: const DropdownDecoration(
                                        marginTop: 2,
                                        maxHeight: 500,
                                      ),
                                      dropdownItemDecoration:
                                          DropdownItemDecoration(
                                        selectedIcon: const Icon(Icons.check_box,
                                            color: Colors.green),
                                        disabledIcon: Icon(Icons.lock,
                                            color: Colors.grey.shade300),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please select a country';
                                        }
                                        return null;
                                      },
                                      onSelectionChange: (selectedItems) {
                                        debugPrint(
                                            "OnSelectionChange: $selectedItems");
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: Center(
                                      child: Text(
                                        "Dimension(Filtered)",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: MultiDropdown<User>(
                                      items: items,
                                      controller: controller4,
                                      enabled: true,
                                      singleSelect: false,
                                      searchEnabled: false,
                                      chipDecoration: ChipDecoration(
                                        backgroundColor:
                                            Color.fromRGBO(228, 252, 247, 1),
                                        wrap: true,
                                        runSpacing: 2,
                                        spacing: 5,
                                      ),
                                      fieldDecoration: FieldDecoration(
                                        hintText: 'Add',
                                        hintStyle:
                                            const TextStyle(color: Colors.black87),
                                        showClearIcon: false,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          borderSide:
                                              const BorderSide(color: Colors.grey),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          borderSide: const BorderSide(
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                      dropdownDecoration: const DropdownDecoration(
                                        marginTop: 2,
                                        maxHeight: 500,
                                      ),
                                      dropdownItemDecoration:
                                          DropdownItemDecoration(
                                        selectedIcon: const Icon(Icons.check_box,
                                            color: Colors.green),
                                        disabledIcon: Icon(Icons.lock,
                                            color: Colors.grey.shade300),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please select a country';
                                        }
                                        return null;
                                      },
                                      onSelectionChange: (selectedItems) {
                                        debugPrint(
                                            "OnSelectionChange: $selectedItems");
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: Center(
                                      child: Text(
                                        "Measure",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: MultiDropdown<User>(
                                      items: items,
                                      controller: controller5,
                                      enabled: true,
                                      singleSelect: false,
                                      searchEnabled: false,
                                      chipDecoration: ChipDecoration(
                                        backgroundColor:
                                            Color.fromRGBO(228, 252, 247, 1),
                                        wrap: true,
                                        runSpacing: 2,
                                        spacing: 10,
                                      ),
                                      fieldDecoration: FieldDecoration(
                                        hintText: 'Add',
                                        hintStyle:
                                            const TextStyle(color: Colors.black87),
                                        showClearIcon: false,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          borderSide:
                                              const BorderSide(color: Colors.grey),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          borderSide: const BorderSide(
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                      dropdownDecoration: const DropdownDecoration(
                                        marginTop: 2,
                                        maxHeight: 500,
                                      ),
                                      dropdownItemDecoration:
                                          DropdownItemDecoration(
                                        selectedIcon: const Icon(Icons.check_box,
                                            color: Colors.green),
                                        disabledIcon: Icon(Icons.lock,
                                            color: Colors.grey.shade300),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please select a country';
                                        }
                                        return null;
                                      },
                                      onSelectionChange: (selectedItems) {
                                        debugPrint(
                                            "OnSelectionChange: $selectedItems");
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: Center(
                                      child: Text(
                                        "Filters",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: MultiDropdown<User>(
                                      items: items,
                                      controller: controller6,
                                      enabled: true,
                                      singleSelect: false,
                                      searchEnabled: false,
                                      chipDecoration: ChipDecoration(
                                        backgroundColor:
                                            Color.fromRGBO(228, 252, 247, 1),
                                        wrap: true,
                                        runSpacing: 2,
                                        spacing: 10,
                                      ),
                                      fieldDecoration: FieldDecoration(
                                        hintText: 'Add',
                                        hintStyle:
                                            const TextStyle(color: Colors.black87),
                                        showClearIcon: false,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          borderSide:
                                              const BorderSide(color: Colors.grey),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          borderSide: const BorderSide(
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                      dropdownDecoration: const DropdownDecoration(
                                        marginTop: 2,
                                        maxHeight: 500,
                                      ),
                                      dropdownItemDecoration:
                                          DropdownItemDecoration(
                                        selectedIcon: const Icon(Icons.check_box,
                                            color: Colors.green),
                                        disabledIcon: Icon(Icons.lock,
                                            color: Colors.grey.shade300),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please select a country';
                                        }
                                        return null;
                                      },
                                      onSelectionChange: (selectedItems) {
                                        debugPrint(
                                            "OnSelectionChange: $selectedItems");
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: Center(
                                      child: Text(
                                        "Top/Bottom",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 150,
                                    child: MultiDropdown<User>(
                                      items: items,
                                      controller: controller7,
                                      enabled: true,
                                      singleSelect: false,
                                      searchEnabled: false,
                                      chipDecoration: ChipDecoration(
                                        backgroundColor:
                                            Color.fromRGBO(228, 252, 247, 1),
                                        wrap: true,
                                        runSpacing: 2,
                                        spacing: 10,
                                      ),
                                      fieldDecoration: FieldDecoration(
                                        hintText: 'Add',
                                        hintStyle:
                                            const TextStyle(color: Colors.black87),
                                        showClearIcon: false,
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          borderSide:
                                              const BorderSide(color: Colors.grey),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          borderSide: const BorderSide(
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ),
                                      dropdownDecoration: const DropdownDecoration(
                                        marginTop: 2,
                                        maxHeight: 500,
                                      ),
                                      dropdownItemDecoration:
                                          DropdownItemDecoration(
                                        selectedIcon: const Icon(Icons.check_box,
                                            color: Colors.green),
                                        disabledIcon: Icon(Icons.lock,
                                            color: Colors.grey.shade300),
                                      ),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please select a country';
                                        }
                                        return null;
                                      },
                                      onSelectionChange: (selectedItems) {
                                        debugPrint(
                                            "OnSelectionChange: $selectedItems");
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 10.0, bottom: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    AnimatedContainer(
                                        height: 40,
                                        duration: Duration(milliseconds: 200),
                                        decoration: (!isHover)
                                            ? BoxDecoration(
                                                color: Colors.amberAccent
                                                    .withOpacity(.3),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                    width: 1, color: Colors.black))
                                            : BoxDecoration(
                                                color: colorLightGreen,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                    width: 1,
                                                    color: colorLightGreen)),
                                        padding: EdgeInsets.all(5),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0, right: 20.0),
                                            child: InkWell(
                                              onTap: () {},
                                              child: Text(
                                                "View",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700),
                                              ),
                                              onHover: (val) {
                                                print("Val--->{}$val");
                                                setState(() {
                                                  isHover = val;
                                                });
                                              },
                                            ),
                                          ),
                                          /*val--->true when user brings in mouse
               val---> false when brings out his mouse*/
                                        )),
                                    AnimatedContainer(
                                        height: 40,
                                        duration: Duration(milliseconds: 200),
                                        decoration: (!isHover2)
                                            ? BoxDecoration(
                                                color:
                                                    colorLightGreen.withOpacity(.3),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                    width: 1, color: Colors.black))
                                            : BoxDecoration(
                                                color: colorLightGreen,
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                border: Border.all(
                                                    width: 1,
                                                    color: colorLightGreen)),
                                        padding: EdgeInsets.all(5),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 20.0, right: 20.0),
                                            child: InkWell(
                                              onTap: () {},
                                              child: Text(
                                                "Export",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700),
                                              ),
                                              onHover: (val) {
                                                print("Val--->{}$val");
                                                setState(() {
                                                  isHover2 = val;
                                                });
                                              },
                                            ),
                                          ),
                                          /*val--->true when user brings in mouse
               val---> false when brings out his mouse*/
                                        )),
                                  ],
                                ),
                              )
                            ],
                          ),
                          width: 500,
                        ),
                )
              ],
            ),
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class User {
  final String name;
  final int id;

  User({required this.name, required this.id});

  @override
  String toString() {
    return 'User(name: $name, id: $id)';
  }
}
