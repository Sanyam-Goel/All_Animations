import 'dart:developer';
import 'package:animate_gradient/animate_gradient.dart';
import 'package:floating_bubbles/floating_bubbles.dart';
import 'package:flutter_brandbakerz/fps.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'dart:async';
import 'package:upi_india/upi_india.dart';
//import 'package:floating_bubbles/floating_bubbles.dart';
// ignore: depend_on_referenced_packages
//import 'package:animate_gradient/animate_gradient.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Rive Animation',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorSchemeSeed: Colors.indigoAccent,
          textTheme: const TextTheme(
            // ignore: deprecated_member_use
            bodyText2: TextStyle(fontSize: 32),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              textStyle: const TextStyle(fontSize: 32),
              minimumSize: const Size(250, 56),
            ),
          ),
        ),
        home: const HomePage(),
      );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Rive Animation'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ListTile(
                  trailing: const Hero(tag: 'tag-1', child: Icon(Icons.person)),
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const SecondPage())),
                  title: const Text('Click on me'),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('bubble background'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const Anii2(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('Animated background'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const Aniii(),
                      ),
                    );
                  },
                ),
                ElevatedButton(
                  child: const Text('Text color'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const TextColorPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('Hinge'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const HingeAnimation(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('UPI'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const UpiPaymentScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('Battery'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const ShowBat(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('peeking'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const PeekAni(),
                      ),
                    );
                  },
                ),
                ElevatedButton(
                  child: const Text('Use of animation contoller'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const MovingManWidget(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('Text kit'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const AnimatedTextPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('Expression Demo'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const LoginForm(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('box Animation'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const CharacterAnimationScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('Simple Animation'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const SimpleAnimation(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('Dancing Mascot'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const StateMachineMuscot(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('Write and Erase'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const PenAni(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  child: const Text('Yes or No'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (context) => const ImageWidget(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      );
}

class Anii2 extends StatelessWidget {
  const Anii2({super.key});

  @override
  Widget build(BuildContext context) {
    eachFrame()
        .take(10000)
        .transform(const ComputeFps())
        // ignore: avoid_print
        .listen((fps) => print('fps: $fps'));
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            color: Colors.blue,
          ),
        ),
        Positioned.fill(
          child: FloatingBubbles.alwaysRepeating(
            noOfBubbles: 50,
            colorsOfBubbles: const [
              Colors.white,
              Colors.red,
            ],
            sizeFactor: 0.2,
            opacity: 70,
            speed: BubbleSpeed.slow,
            paintingStyle: PaintingStyle.fill,
            shape: BubbleShape.circle, //This is the default
          ),
        ),
      ],
    );
  }
}
class Aniii extends StatelessWidget {
  const Aniii({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimateGradient(
        primaryBegin: Alignment.topLeft,
        primaryEnd: Alignment.bottomLeft,
        secondaryBegin: Alignment.bottomLeft,
        secondaryEnd: Alignment.topRight,
        primaryColors: const [
          Colors.pink,
          Colors.pinkAccent,
          Colors.white,
        ],
        secondaryColors: const [
          Colors.white,
          Colors.blueAccent,
          Colors.blue,
        ],
        child: const Center(
          child: Text(
            'Animated Gradient',
            style: TextStyle(
              fontSize: 36,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

class HingeAnimation extends StatefulWidget {
  const HingeAnimation({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HingeAnimationState createState() => _HingeAnimationState();
  
}
  
class _HingeAnimationState extends State<HingeAnimation> with SingleTickerProviderStateMixin{
  // animation setup
  late AnimationController _controller;
  late Animation<double> _rotationAnimation;
  late Animation<double> _slideAnimation;
  late Animation<double> _opacityAnimation;
  
  
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
  
    _rotationAnimation = Tween(end: 0.15, begin: 0.0)
        .animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
            0.0,
            0.5,
            curve: Curves.bounceInOut
        ),
      ),
    );
     // setrtup the Tween for creating curve
    _slideAnimation = Tween(begin: 100.0, end: 600.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
            0.5,
            1.0,
            curve: Curves.fastOutSlowIn)
        ,
      ),
    );
      // setup opacticty as per need
    _opacityAnimation = Tween(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(
            0.5,
            1.0,
            curve: Curves.fastOutSlowIn),
      ),
    );
  
  }
  
  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  
  // the animation widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[300],
          automaticallyImplyLeading: false,
          title: const Text("Sanyam"),
          centerTitle: true,
        ),
  
        body: AnimatedBuilder(
          animation: _slideAnimation,
          builder: (BuildContext context, Widget ?child) => Container(
            width: 200,
            height: 150,
            padding: const EdgeInsets.all(0),
            margin: EdgeInsets.only(
              left: 100,
              top: _slideAnimation.value,
            ),
            child: RotationTransition(
              turns: _rotationAnimation,
              child: Center(
                child:
                Text('Animations', style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(
                        300,
                        150,
                        500,
                        _opacityAnimation.value)
                ),),
              ),
            ),
          ),
        ),
        // the button
        floatingActionButtonLocation:
        FloatingActionButtonLocation.miniCenterFloat,
  
        floatingActionButton:
        FloatingActionButton(
          backgroundColor: Colors.green[300],
          onPressed: (){
            _controller.forward();
          },
          child: const Icon(Icons.play_arrow),
        ),
    );
  }
}

class TextColorPage extends StatefulWidget {
  const TextColorPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TextColorPageState createState() => _TextColorPageState();
}

class _TextColorPageState extends State<TextColorPage> {
  late SharedPreferences _prefs;
  late Color _selectedColor = Colors.blue;

  @override
  void initState() {
    super.initState();
    _loadSelectedColor();
  }

  Future<void> _loadSelectedColor() async {
    _prefs = await SharedPreferences.getInstance();
    int colorValue = _prefs.getInt('selectedColor') ?? Colors.black.value;
    setState(() {
      _selectedColor = Color(colorValue);
    });
  }

  Future<void> _saveSelectedColor(Color color) async {
    setState(() {
      _selectedColor = color;
    });
    await _prefs.setInt('selectedColor', color.value);
  }

  void _showColorPickerDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Text Color'),
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: _selectedColor,
              onColorChanged: (color) {
                _saveSelectedColor(color);
              },
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Color Changer'),
      ),
      body: Center(
        child: Text(
          'Hello, Flutter!',
          style: TextStyle(
            fontSize: 24.0,
            color: _selectedColor,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showColorPickerDialog,
        tooltip: 'Change Color',
        child: const Icon(Icons.color_lens),
      ),
    );
  }
}

class ColorPicker extends StatelessWidget {
  final Color pickerColor;
  final ValueChanged<Color> onColorChanged;

  const ColorPicker({super.key, 
    required this.pickerColor,
    required this.onColorChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ColorPickerWidget(
      pickerColor: pickerColor,
      onColorChanged: onColorChanged,
    );
  }
}

class ColorPickerWidget extends StatefulWidget {
  final Color pickerColor;
  final ValueChanged<Color> onColorChanged;

  const ColorPickerWidget({super.key, 
    required this.pickerColor,
    required this.onColorChanged,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ColorPickerWidgetState createState() => _ColorPickerWidgetState();
}
class _ColorPickerWidgetState extends State<ColorPickerWidget> {
  late Color _currentColor;

  @override
  void initState() {
    super.initState();
    _currentColor = widget.pickerColor;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ColorPickerDialog(
        pickerColor: _currentColor,
        onColorChanged: (color) {
          setState(() {
            _currentColor = color;
          });
        },
        onColorSelected: () {
          widget.onColorChanged(_currentColor);
          Navigator.of(context).pop();
        },
      ),
    );
  }
}

class ColorPickerDialog extends StatelessWidget {
  final Color pickerColor;
  final ValueChanged<Color> onColorChanged;
  final VoidCallback onColorSelected;

  const ColorPickerDialog({super.key, 
    required this.pickerColor,
    required this.onColorChanged,
    required this.onColorSelected,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ColorPickerSwatch(color: pickerColor, onColorChanged: onColorChanged),
          ElevatedButton(
            onPressed: onColorSelected,
            child: const Text('Select Color'),
          ),
        ],
      ),
    );
  }
}

class ColorPickerSwatch extends StatelessWidget {
  final Color color;
  final ValueChanged<Color> onColorChanged;

  const ColorPickerSwatch({super.key, 
    required this.color,
    required this.onColorChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Pick a color'),
              content: SingleChildScrollView(
                child: ColorPicker(
                  pickerColor: color,
                  onColorChanged: onColorChanged,
                ),
              ),
            );
          },
        );
      },
      child: Container(
        width: 36.0,
        height: 36.0,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}





















class UpiPaymentScreen extends StatefulWidget {
  const UpiPaymentScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UpiPaymentScreenState createState() => _UpiPaymentScreenState();
}

class _UpiPaymentScreenState extends State<UpiPaymentScreen> {
  Future<UpiResponse>? _transaction;
  final UpiIndia _upiIndia = UpiIndia();
  List<UpiApp>? apps;

  TextStyle header = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  TextStyle value = const TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14,
  );

  @override
  void initState() {
    _upiIndia.getAllUpiApps(mandatoryTransactionId: false).then((value) {
      setState(() {
        apps = value;
      });
    }).catchError((e) {
      apps = [];
    });
    super.initState();
  }

  Future<UpiResponse> initiateTransaction(UpiApp app) async {
    return _upiIndia.startTransaction(
        app: app,
        receiverUpiId: "8958605391@airtel",
        receiverName: 'Sanyam',
        transactionRefId: 'Testing Upi India Plugin',
        transactionNote: 'Not actual. Just an example.',
        amount: 1.00,
        merchantId: '');
  }

  Widget displayUpiApps() {
    if (apps == null) {
      return const Center(child: CircularProgressIndicator());
    } else if (apps!.isEmpty) {
      return Center(
        child: Text(
          "No apps found to handle transaction.",
          style: header,
        ),
      );
    } else {
      return Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Wrap(
            children: apps!.map<Widget>((UpiApp app) {
              return GestureDetector(
                onTap: () {
                  _transaction = initiateTransaction(app);
                  setState(() {});
                },
                child: SizedBox(
                  height: 200,
                  width: 100,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.blue.shade900,
                        child: const Icon(
                          Icons.payment,
                          size: 60,
                          color: Colors.white,
                        ),
                      ),
                      Text(app.name),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      );
    }
  }

  String _upiErrorHandler(error) {
    switch (error) {
      case UpiIndiaAppNotInstalledException:
        return 'Requested app not installed on device';
      case UpiIndiaUserCancelledException:
        return 'You cancelled the transaction';
      case UpiIndiaNullResponseException:
        return 'Requested app didn\'t return any response';
      case UpiIndiaInvalidParametersException:
        return 'Requested app cannot handle the transaction';
      default:
        return 'An Unknown error has occurred';
    }
  }

  void _checkTxnStatus(String status) {
    switch (status) {
      case UpiPaymentStatus.SUCCESS:
        log('Transaction Successful');
        break;
      case UpiPaymentStatus.SUBMITTED:
        log('Transaction Submitted');
        break;
      case UpiPaymentStatus.FAILURE:
        log('Transaction Failed');
        break;
      default:
        log('Received an Unknown transaction status');
    }
  }

  Widget displayTransactionData(title, body) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("$title: ", style: header),
          Flexible(
              child: Text(
            body,
            style: value,
          )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: const Text("Integrate UPI"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: displayUpiApps(),
          ),
          Expanded(
            child: FutureBuilder(
              future: _transaction,
              builder:
                  (BuildContext context, AsyncSnapshot<UpiResponse> snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        _upiErrorHandler(snapshot.error.runtimeType),
                        style: header,
                      ), // Print's text message on screen
                    );
                  }

                  UpiResponse upiResponse = snapshot.data!;

                  String txnId = upiResponse.transactionId ?? 'N/A';
                  String resCode = upiResponse.responseCode ?? 'N/A';
                  String txnRef = upiResponse.transactionRefId ?? 'N/A';
                  String status = upiResponse.status ?? 'N/A';
                  String approvalRef = upiResponse.approvalRefNo ?? 'N/A';
                  _checkTxnStatus(status);

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        displayTransactionData('Transaction Id', txnId),
                        displayTransactionData('Response Code', resCode),
                        displayTransactionData('Reference Id', txnRef),
                        displayTransactionData('Status', status.toUpperCase()),
                        displayTransactionData('Approval No', approvalRef),
                      ],
                    ),
                  );
                } else {
                  return const Center(
                    child: Text(''),
                  );
                }
              },
            ),
          )
        ],
      ),
    );
  }
}

class NewAni extends StatelessWidget {
  const NewAni({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('New'),
          centerTitle: true,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Expanded(
              //   child: RiveAnimation.network(
              //     'https://public.rive.app/community/runtime-files/2191-4327-loader-solicitud-de-cuentas.riv',
              //   ),
              // ),
              Expanded(
                child: RiveAnimation.asset(
                  'assets/smile.riv',
                ),
              ),
            ],
          ),
        ),
      );
  }
}

class ShowBat extends StatefulWidget {
  const ShowBat({super.key});

  @override
  State<ShowBat> createState() => _ShowBatState();
}

class _ShowBatState extends State<ShowBat> {
  static const platform = MethodChannel('samples.flutter.dev/battery');
  // Get battery level.
String _batteryLevel = 'Unknown battery level.';

Future<void> _getBatteryLevel() async {
  String batteryLevel;
  try {
    final int result = await platform.invokeMethod('getBatteryLevel');
    batteryLevel = 'Battery level at $result % .';
    if(result < 30){
      batteryLevel = 'Battery level at $result % .';
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Battery is low! Please connect your charger.')),);
    }
  } on PlatformException catch (e) {
    batteryLevel = "Failed to get battery level: '${e.message}'.";
  }

  setState(() {
    _batteryLevel = batteryLevel;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: _getBatteryLevel,
            
            child: const Text('Get Battery Level'),
          ),
          Text(_batteryLevel),
        ],
      ),
    ),
    );
  }
}
class PeekAni extends StatelessWidget {
  const PeekAni({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('New'),
          centerTitle: true,
        ),
        body: ListView(
        children: [
        // Load a Lottie file from your assets
        Lottie.asset('assets/jump.json'),
        Lottie.asset('assets/catpeek.json'),
        Lottie.asset('assets/boxpeek.json'),
      ],
        // body: const Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       // Expanded(
        //       //   child: RiveAnimation.network(
        //       //     'https://public.rive.app/community/runtime-files/2191-4327-loader-solicitud-de-cuentas.riv',
        //       //   ),
        //       // ),
        //       Expanded(
        //         child: RiveAnimation.asset(
        //           'assets/catpeek.json',
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
  ));
}

class ImageWidget extends StatefulWidget {
  const ImageWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ImageWidgetState createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  int _imageIndex = 0;
  final List<String> _imageList = [
    'assets/img-1.riv',
    'assets/img1.riv',
    'assets/img2.riv',
  ];

  void _changeImage(int isYesPressed) {
    setState(() {
      if (isYesPressed == 2) {
        _imageIndex = 1;
      } else if (isYesPressed == 1) {
        _imageIndex = 2;
        //_imageIndex = (_imageIndex + 1) % _imageList.length;
      } else {
        _imageIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: RiveAnimation.asset(
            _imageList[_imageIndex],
          ),
        ),
        const SizedBox(height: 5),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'Tea ?',
              style: TextStyle(color: Colors.white),
            ),
            ElevatedButton(
              onPressed: () => _changeImage(1),
              child: const Text('Yes'),
            ),
            //const SizedBox(width: 20),
            ElevatedButton(
              onPressed: () => _changeImage(2),
              child: const Text('No'),
            ),
          ],
        ),
      ],
    );
  }
}

class PenAni extends StatelessWidget {
  const PenAni({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('New'),
          centerTitle: true,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Expanded(
              //   child: RiveAnimation.network(
              //     'https://public.rive.app/community/runtime-files/2191-4327-loader-solicitud-de-cuentas.riv',
              //   ),
              // ),
              Expanded(
                child: RiveAnimation.asset(
                  'assets/pencil.riv',
                ),
              ),
            ],
          ),
        ),
      );
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Hero(
                tag: 'tag-1',
                child: Container(
                  color: Colors.blueAccent,
                  width: 100,
                  height: 100,
                ))
          ],
        ),
      ),
    );
  }
}

class AnimatedTextPage extends StatelessWidget {
  const AnimatedTextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Text Kit Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DefaultTextStyle(
              style: const TextStyle(fontSize: 40.0, color: Colors.black),
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('Hello World'),
                  WavyAnimatedText('Look at the waves'),
                ],
                isRepeatingAnimation: true,
                onTap: () {},
              ),
            ),
            SizedBox(
              width: 300.0,
              child: TextLiquidFill(
                text: 'LIQUIDY',
                waveColor: Colors.blueAccent,
                boxBackgroundColor: Colors.redAccent,
                textStyle: const TextStyle(
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold,
                ),
                boxHeight: 300.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MovingManWidget extends StatefulWidget {
  const MovingManWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MovingManWidgetState createState() => _MovingManWidgetState();
}

class _MovingManWidgetState extends State<MovingManWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool _isJumping = false;
  double _manYPosition = 0.0;
  double _manXPosition = 0.0;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    )..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _moveManTo(double yPosition, double xPosition) {
    setState(() {
      _manYPosition = yPosition;
      _manXPosition = xPosition;
    });
  }

  void _jump() {
    if (!_isJumping) {
      _isJumping = true;
      _animationController.forward(from: 0.0).then((_) {
        _animationController.reverse().then((_) {
          _isJumping = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _jump,
      onHorizontalDragUpdate: (details) {
        _moveManTo(_manYPosition, _manXPosition + details.delta.dx);
      },
      child: Container(
        color: Colors.white,
        child: Stack(
          children: [
            SizedBox(
              width: 250.0,
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 7.0,
                      color: Colors.white,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    FlickerAnimatedText('Flicker Frenzy'),
                    FlickerAnimatedText('Night Vibes On'),
                    FlickerAnimatedText("C'est La Vie !"),
                  ],
                  onTap: () {},
                ),
              ),
            ),
            Positioned(
              left: _manXPosition,
              top: MediaQuery.of(context).size.height * 0.8 - _manYPosition,
              child: AnimatedBuilder(
                animation: _animationController,
                builder: (BuildContext context, Widget? child) {
                  return Transform.translate(
                    offset: Offset(0.0, -100 * _animationController.value),
                    child: Image.asset(
                      'assets/man.png', // Replace with your man image asset path
                      height: 100.0,
                      width: 50.0,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  var animationLink = 'assets/login.riv';
  late SMITrigger failTrigger, successTrigger;
  late SMIBool isChecking, isHandsUp;
  late SMINumber lookNum;
  Artboard? artboard;
  late StateMachineController? stateMachineController;

  @override
  void initState() {
    super.initState();
    initArtboard();
  }

  initArtboard() {
    rootBundle.load(animationLink).then((value) {
      final file = RiveFile.import(value);
      final art = file.mainArtboard;
      stateMachineController =
          StateMachineController.fromArtboard(art, "Login Machine")!;
      if (stateMachineController != null) {
        art.addController(stateMachineController!);
        for (var element in stateMachineController!.inputs) {
          if (element.name == "isChecking") {
            isChecking = element as SMIBool;
          } else if (element.name == 'isHandsUp') {
            isHandsUp = element as SMIBool;
          } else if (element.name == "trigSuccess") {
            successTrigger = element as SMITrigger;
          } else if (element.name == "trigFail") {
            failTrigger = element as SMITrigger;
          } else if (element.name == "numLook") {
            lookNum = element as SMINumber;
          }
        }
      }
      setState(() {
        artboard = art;
      });
    });
  }

  checking() {
    isHandsUp.change(false);
    isChecking.change(true);
    lookNum.change(0);
  }

  moveEyes(value) {
    lookNum.change(value.length.toDouble());
  }

  handsUp() {
    isHandsUp.change(true);
    isChecking.change(false);
  }

  login() {
    isHandsUp.change(false);
    isChecking.change(false);
    if (emailController.text == 'admin' && passwordController.text == 'admin') {
      successTrigger.fire();
    } else {
      failTrigger.fire();
    }
  }
  //@override
  // void dispose() {
  //   _usernameController.dispose();
  //   _passwordController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //const Expanded(child: SingleChildScrollView()),
              if (artboard != null)
                SizedBox(
                  width: 400,
                  height: 200,
                  child: Rive(artboard: artboard!),
                ),
              TextField(
                onTap: checking,
                onChanged: ((value) => moveEyes(value)),
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  hintText: 'Username',
                ),
              ),
              const SizedBox(height: 16.0),
              TextField(
                onTap: handsUp,
                //onChanged: ,
                controller: passwordController,
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
                obscureText: true,
              ),
              const SizedBox(height: 24.0),
              ElevatedButton(
                onPressed: login,
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CharacterAnimationScreen extends StatefulWidget {
  const CharacterAnimationScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CharacterAnimationScreenState createState() =>
      _CharacterAnimationScreenState();
}

class _CharacterAnimationScreenState extends State<CharacterAnimationScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _characterAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _characterAnimation = Tween<double>(begin: 0, end: 100).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _startAnimation() {
    _animationController.reset();
    _animationController.forward();
  }

  void _handleTap() {
    _startAnimation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Character Animation POC'),
      ),
      body: GestureDetector(
        onTap: _handleTap,
        child: Center(
          child: AnimatedBuilder(
            animation: _characterAnimation,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(_characterAnimation.value, 0),
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.blueGrey,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class SimpleAnimation extends StatelessWidget {
  const SimpleAnimation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Rive Animation'),
          centerTitle: true,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: RiveAnimation.network(
                  'https://public.rive.app/community/runtime-files/2191-4327-loader-solicitud-de-cuentas.riv',
                ),
              ),
              Expanded(
                child: RiveAnimation.asset(
                  'assets/dash_flutter_muscot.riv',
                ),
              ),
            ],
          ),
        ),
      );
}

class StateMachineMuscot extends StatefulWidget {
  const StateMachineMuscot({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _StateMachineMuscotState createState() => _StateMachineMuscotState();
}

class _StateMachineMuscotState extends State<StateMachineMuscot> {
  Artboard? riveArtboard;
  SMIBool? isDance;
  SMITrigger? isLookUp;

  @override
  void initState() {
    super.initState();
    rootBundle.load('assets/dash_flutter_muscot.riv').then(
      (data) async {
        try {
          final file = RiveFile.import(data);
          final artboard = file.mainArtboard;
          var controller =
              StateMachineController.fromArtboard(artboard, 'birb');
          if (controller != null) {
            artboard.addController(controller);
            isDance = controller.findSMI('dance');
            isLookUp = controller.findSMI('look up');
          }
          setState(() => riveArtboard = artboard);
        } catch (e) {
          // ignore: avoid_print
          print(e);
        }
      },
    );
  }

  void toggleDance(bool newValue) {
    setState(() => isDance!.value = newValue);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Rive Animation'),
          centerTitle: true,
        ),
        body: riveArtboard == null
            ? const SizedBox()
            : Column(
                children: [
                  Expanded(
                    child: Rive(
                      artboard: riveArtboard!,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Dance'),
                      Switch(
                        value: isDance!.value,
                        onChanged: (value) => toggleDance(value),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton(
                    child: const Text('Look up'),
                    onPressed: () => isLookUp?.value = true,
                  ),
                  const SizedBox(height: 12),
                ],
              ),
      );
}
