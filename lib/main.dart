import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:univ_cont/constants.dart';
import 'package:univ_cont/device.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  SystemChrome.setEnabledSystemUIOverlays([]);
  return runApp(UniversalControllerApp());
}

class UniversalControllerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FlutterRemote',
      home: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  SamsungSmartTV tv;
  bool _keypadShown = false;

  @override
  void initState() {
    super.initState();
  }

  Future<void> connectTV() async {
    try {
      setState(() async {
        tv = await SamsungSmartTV.discover();
        await tv.connect();
      });
    } catch (e) {
      print(e);
    }
    print("this is the token to save somewere ${tv.token}");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.cast, size: 30, color: Colors.black),
                  onPressed: connectTV,
                ),
                IconButton(
                  icon: Icon(Icons.dialpad, size: 30, color: _keypadShown ? Colors.blue : null),
                  onPressed: () {
                    setState(() {
                      _keypadShown = !_keypadShown;
                    });
                  },
                ),
                IconButton(
                  icon: Icon(Icons.power_settings_new, color: Colors.red, size: 30),
                  onPressed: () async {
                    await tv.sendKey(KEY_CODES.KEY_POWER);
                  },
                ),
              ],
            ),
            SizedBox(height: 50),
            Visibility(
              visible: _keypadShown,
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InsetShadowContainer(
                          width: 50,
                          height: 50,
                          padding: EdgeInsets.zero,
                          child: MaterialButton(
                            padding: EdgeInsets.zero,
                            shape: CircleBorder(),
                            child: Text(
                              "1",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () async {
                              await tv.sendKey(KEY_CODES.KEY_1);
                            },
                          ),
                        ),
                        InsetShadowContainer(
                          width: 50,
                          height: 50,
                          padding: EdgeInsets.zero,
                          child: MaterialButton(
                            padding: EdgeInsets.zero,
                            shape: CircleBorder(),
                            child: Text(
                              "2",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () async {
                              await tv.sendKey(KEY_CODES.KEY_2);
                            },
                          ),
                        ),
                        InsetShadowContainer(
                          width: 50,
                          height: 50,
                          padding: EdgeInsets.zero,
                          child: MaterialButton(
                            padding: EdgeInsets.zero,
                            shape: CircleBorder(),
                            child: Text(
                              "3",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () async {
                              await tv.sendKey(KEY_CODES.KEY_3);
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InsetShadowContainer(
                          width: 50,
                          height: 50,
                          padding: EdgeInsets.zero,
                          child: MaterialButton(
                            padding: EdgeInsets.zero,
                            shape: CircleBorder(),
                            child: Text(
                              "4",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () async {
                              await tv.sendKey(KEY_CODES.KEY_4);
                            },
                          ),
                        ),
                        InsetShadowContainer(
                          width: 50,
                          height: 50,
                          padding: EdgeInsets.zero,
                          child: MaterialButton(
                            padding: EdgeInsets.zero,
                            shape: CircleBorder(),
                            child: Text(
                              "5",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () async {
                              await tv.sendKey(KEY_CODES.KEY_5);
                            },
                          ),
                        ),
                        InsetShadowContainer(
                          width: 50,
                          height: 50,
                          padding: EdgeInsets.zero,
                          child: MaterialButton(
                            padding: EdgeInsets.zero,
                            shape: CircleBorder(),
                            child: Text(
                              "6",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () async {
                              await tv.sendKey(KEY_CODES.KEY_6);
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InsetShadowContainer(
                          width: 50,
                          height: 50,
                          padding: EdgeInsets.zero,
                          child: MaterialButton(
                            padding: EdgeInsets.zero,
                            shape: CircleBorder(),
                            child: Text(
                              "7",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () async {
                              await tv.sendKey(KEY_CODES.KEY_7);
                            },
                          ),
                        ),
                        InsetShadowContainer(
                          width: 50,
                          height: 50,
                          padding: EdgeInsets.zero,
                          child: MaterialButton(
                            padding: EdgeInsets.zero,
                            shape: CircleBorder(),
                            child: Text(
                              "8",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () async {
                              await tv.sendKey(KEY_CODES.KEY_8);
                            },
                          ),
                        ),
                        InsetShadowContainer(
                          width: 50,
                          height: 50,
                          padding: EdgeInsets.zero,
                          child: MaterialButton(
                            padding: EdgeInsets.zero,
                            shape: CircleBorder(),
                            child: Text(
                              "9",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () async {
                              await tv.sendKey(KEY_CODES.KEY_9);
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InsetShadowContainer(
                          width: 50,
                          height: 50,
                          padding: EdgeInsets.zero,
                          child: MaterialButton(
                            padding: EdgeInsets.zero,
                            shape: CircleBorder(),
                            child: Text(
                              "GUIDE",
                              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () async {
                              await tv.sendKey(KEY_CODES.KEY_TOOLS);
                            },
                          ),
                        ),
                        InsetShadowContainer(
                          width: 50,
                          height: 50,
                          padding: EdgeInsets.zero,
                          child: MaterialButton(
                            padding: EdgeInsets.zero,
                            shape: CircleBorder(),
                            child: Text(
                              "0",
                              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () async {
                              await tv.sendKey(KEY_CODES.KEY_0);
                            },
                          ),
                        ),
                        InsetShadowContainer(
                          width: 50,
                          height: 50,
                          padding: EdgeInsets.zero,
                          child: MaterialButton(
                            padding: EdgeInsets.zero,
                            shape: CircleBorder(),
                            child: Text(
                              "GUIDE",
                              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                            onPressed: () async {
                              await tv.sendKey(KEY_CODES.KEY_GUIDE);
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Visibility(
              visible: !_keypadShown,
              child: Expanded(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: InsetShadowContainer(
                        width: 50,
                        height: 50,
                        padding: EdgeInsets.zero,
                        child: MaterialButton(
                          padding: EdgeInsets.zero,
                          shape: CircleBorder(),
                          child: Text(
                            "SMART",
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          onPressed: () async {
                            await tv.sendKey(KEY_CODES.KEY_HOME);
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: InsetShadowContainer(
                        width: 50,
                        height: 50,
                        padding: EdgeInsets.zero,
                        child: MaterialButton(
                          padding: EdgeInsets.zero,
                          shape: CircleBorder(),
                          child: Text(
                            "INPUT",
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          onPressed: () async {
                            await tv.sendKey(KEY_CODES.KEY_SOURCE);
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: InsetShadowContainer(
                        width: 50,
                        height: 50,
                        padding: EdgeInsets.zero,
                        child: MaterialButton(
                          padding: EdgeInsets.zero,
                          shape: CircleBorder(),
                          child: Text(
                            "BACK",
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          onPressed: () async {
                            await tv.sendKey(KEY_CODES.KEY_RETURN);
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: InsetShadowContainer(
                        width: 50,
                        height: 50,
                        padding: EdgeInsets.zero,
                        child: MaterialButton(
                          padding: EdgeInsets.zero,
                          shape: CircleBorder(),
                          child: Text(
                            "EXIT",
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          onPressed: () async {
                            await tv.sendKey(KEY_CODES.KEY_EXT41);
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: InsetShadowContainer(
                        width: 60,
                        height: 60,
                        padding: EdgeInsets.zero,
                        child: MaterialButton(
                          padding: EdgeInsets.zero,
                          shape: CircleBorder(),
                          child: Text(
                            "OK",
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          onPressed: () async {
                            await tv.sendKey(KEY_CODES.KEY_ENTER);
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0, -0.6),
                      child: InsetShadowContainer(
                        width: 60,
                        height: 60,
                        padding: EdgeInsets.zero,
                        child: MaterialButton(
                          padding: EdgeInsets.zero,
                          shape: CircleBorder(),
                          child: Icon(Icons.arrow_drop_up, size: 30),
                          onPressed: () async {
                            await tv.sendKey(KEY_CODES.KEY_UP);
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0, 0.6),
                      child: InsetShadowContainer(
                        width: 60,
                        height: 60,
                        padding: EdgeInsets.zero,
                        child: MaterialButton(
                          padding: EdgeInsets.zero,
                          shape: CircleBorder(),
                          child: Icon(Icons.arrow_drop_down, size: 30),
                          onPressed: () async {
                            await tv.sendKey(KEY_CODES.KEY_DOWN);
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(0.6, 0),
                      child: InsetShadowContainer(
                        width: 60,
                        height: 60,
                        padding: EdgeInsets.zero,
                        child: MaterialButton(
                          padding: EdgeInsets.zero,
                          shape: CircleBorder(),
                          child: Icon(Icons.arrow_right, size: 30),
                          onPressed: () async {
                            await tv.sendKey(KEY_CODES.KEY_RIGHT);
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment(-0.6, 0),
                      child: InsetShadowContainer(
                        width: 60,
                        height: 60,
                        padding: EdgeInsets.zero,
                        child: MaterialButton(
                          padding: EdgeInsets.zero,
                          shape: CircleBorder(),
                          child: Icon(Icons.arrow_left, size: 30),
                          onPressed: () async {
                            await tv.sendKey(KEY_CODES.KEY_LEFT);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InsetShadowContainer(
                  width: 30,
                  height: 30,
                  padding: EdgeInsets.all(3),
                  child: MaterialButton(
                    padding: EdgeInsets.zero,
                    color: Colors.red,
                    shape: CircleBorder(),
                    onPressed: () async {
                      await tv.sendKey(KEY_CODES.KEY_RED);
                    },
                  ),
                ),
                InsetShadowContainer(
                  width: 30,
                  height: 30,
                  padding: EdgeInsets.all(3),
                  child: MaterialButton(
                    padding: EdgeInsets.zero,
                    color: Colors.green,
                    shape: CircleBorder(),
                    onPressed: () async {
                      await tv.sendKey(KEY_CODES.KEY_GREEN);
                    },
                  ),
                ),
                InsetShadowContainer(
                  width: 30,
                  height: 30,
                  padding: EdgeInsets.all(3),
                  child: MaterialButton(
                    padding: EdgeInsets.zero,
                    color: Colors.yellow,
                    shape: CircleBorder(),
                    onPressed: () async {
                      await tv.sendKey(KEY_CODES.KEY_YELLOW);
                    },
                  ),
                ),
                InsetShadowContainer(
                  width: 30,
                  height: 30,
                  padding: EdgeInsets.all(3),
                  child: MaterialButton(
                    padding: EdgeInsets.zero,
                    color: Colors.blue,
                    shape: CircleBorder(),
                    onPressed: () async {
                      await tv.sendKey(KEY_CODES.KEY_CYAN);
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InsetShadowContainer(
                  child: Column(
                    children: [
                      MaterialButton(
                        height: 50,
                        minWidth: 50,
                        shape: CircleBorder(),
                        child: Icon(Icons.keyboard_arrow_up, size: 30),
                        onPressed: () async {
                          await tv.sendKey(KEY_CODES.KEY_VOLUP);
                        },
                      ),
                      MaterialButton(
                        height: 50,
                        minWidth: 50,
                        shape: CircleBorder(),
                        child: Icon(Icons.volume_off),
                        onPressed: () async {
                          await tv.sendKey(KEY_CODES.KEY_MUTE);
                        },
                      ),
                      MaterialButton(
                        height: 50,
                        minWidth: 50,
                        shape: CircleBorder(),
                        child: Icon(Icons.keyboard_arrow_down, size: 30),
                        onPressed: () async {
                          await tv.sendKey(KEY_CODES.KEY_VOLDOWN);
                        },
                      ),
                    ],
                  ),
                ),
                InsetShadowContainer(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: MaterialButton(
                          height: 50,
                          minWidth: 50,
                          padding: EdgeInsets.zero,
                          shape: CircleBorder(),
                          child: Text(
                            "MENU",
                            style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                          ),
                          onPressed: () async {
                            await tv.sendKey(KEY_CODES.KEY_HOME);
                          },
                        ),
                      ),
                      SizedBox(height: 35),
                      MaterialButton(
                        height: 50,
                        minWidth: 50,
                        shape: CircleBorder(),
                        child: Text(
                          "MORE",
                          style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                        onPressed: () async {
                          await tv.sendKey(KEY_CODES.KEY_MORE);
                        },
                      ),
                    ],
                  ),
                ),
                InsetShadowContainer(
                  child: Column(
                    children: [
                      MaterialButton(
                        height: 50,
                        minWidth: 50,
                        shape: CircleBorder(),
                        child: Icon(Icons.keyboard_arrow_up, size: 30),
                        onPressed: () async {
                          await tv.sendKey(KEY_CODES.KEY_CHUP);
                        },
                      ),
                      MaterialButton(
                        height: 50,
                        minWidth: 50,
                        shape: CircleBorder(),
                        child: Text('P', style: TextStyle(fontSize: 17, color: Colors.black)),
                        onPressed: null,
                      ),
                      MaterialButton(
                        height: 50,
                        minWidth: 50,
                        shape: CircleBorder(),
                        child: Icon(Icons.keyboard_arrow_down, size: 30),
                        onPressed: () async {
                          await tv.sendKey(KEY_CODES.KEY_CHDOWN);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InsetShadowContainer(
                  width: 40,
                  height: 40,
                  padding: EdgeInsets.all(3),
                  child: MaterialButton(
                    padding: EdgeInsets.zero,
                    shape: CircleBorder(),
                    child: Icon(Icons.fast_rewind, size: 20),
                    onPressed: () async {
                      await tv.sendKey(KEY_CODES.KEY_REWIND);
                    },
                  ),
                ),
                InsetShadowContainer(
                  width: 40,
                  height: 40,
                  padding: EdgeInsets.all(3),
                  child: MaterialButton(
                    padding: EdgeInsets.zero,
                    shape: CircleBorder(),
                    child: Icon(Icons.fiber_manual_record, size: 20, color: Colors.red),
                    onPressed: () async {
                      await tv.sendKey(KEY_CODES.KEY_REC);
                    },
                  ),
                ),
                InsetShadowContainer(
                  width: 40,
                  height: 40,
                  padding: EdgeInsets.all(3),
                  child: MaterialButton(
                    padding: EdgeInsets.zero,
                    shape: CircleBorder(),
                    child: Icon(Icons.play_arrow, size: 20),
                    onPressed: () async {
                      await tv.sendKey(KEY_CODES.KEY_PLAY);
                    },
                  ),
                ),
                InsetShadowContainer(
                  width: 40,
                  height: 40,
                  padding: EdgeInsets.all(3),
                  child: MaterialButton(
                    padding: EdgeInsets.zero,
                    shape: CircleBorder(),
                    child: Icon(Icons.stop, size: 20),
                    onPressed: () async {
                      await tv.sendKey(KEY_CODES.KEY_STOP);
                    },
                  ),
                ),
                InsetShadowContainer(
                  width: 40,
                  height: 40,
                  padding: EdgeInsets.all(3),
                  child: MaterialButton(
                    padding: EdgeInsets.zero,
                    shape: CircleBorder(),
                    child: Icon(Icons.pause, size: 20, color: Colors.yellow),
                    onPressed: () async {
                      await tv.sendKey(KEY_CODES.KEY_PAUSE);
                    },
                  ),
                ),
                InsetShadowContainer(
                  width: 40,
                  height: 40,
                  padding: EdgeInsets.all(3),
                  child: MaterialButton(
                    padding: EdgeInsets.zero,
                    shape: CircleBorder(),
                    child: Icon(Icons.fast_forward, size: 20),
                    onPressed: () async {
                      await tv.sendKey(KEY_CODES.KEY_FF);
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class InsetShadowContainer extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final double width;
  final double height;

  const InsetShadowContainer({
    Key key,
    this.child,
    this.padding = const EdgeInsets.symmetric(vertical: 10),
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        // color: Colors.white,
        border: Border.all(width: 2, color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
          ),
          BoxShadow(
            color: Colors.white,
            spreadRadius: -1,
            blurRadius: 1,
          ),
        ],
      ),
      padding: padding,
      child: child,
    );
  }
}
