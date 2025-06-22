import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  double result = 0;

  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    result = double.parse(textEditingController.text) * 85.36;
    setState(() {});
    // build(context);
    if (kDebugMode) {
      print('button clicked');
    }
  }

  @override
  Widget build(BuildContext context) {
    //build context basically tells the location of a perticular widget and the widget tree

    // print('build fn');
    // double result = 0;

    print('rebuilt');

    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.amber,
        width: 2.0,
        style: BorderStyle.solid,
        // strokeAlign: BorderSide.strokeAlignInside,
      ),
      borderRadius: BorderRadius.circular(10),
    );

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Currency Converter'),
        centerTitle: true,
        foregroundColor: Colors.white,
        // actions: [], //it takes icons or action like video calling icon or chat icon etc.
        // leading: Text('HI'), //it takes widget
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '₹ ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                // onSubmitted: (value) {
                //   print(value);
                // }, //it is not suitable to use here
                controller: textEditingController,

                style: const TextStyle(color: Colors.black),

                decoration: InputDecoration(
                  // label: Text(
                  //   'Please Enter a amount in USD',
                  //   style: TextStyle(color: Colors.white),
                  // ),
                  hintText: 'Please Enter The Amount In USD',
                  hintStyle: const TextStyle(color: Colors.black),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                  // contentPadding:
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),

            //button

            //raised
            //appears like a text
            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: convert,

              // style: const ButtonStyle(
              //   elevation: WidgetStatePropertyAll(15),
              //   backgroundColor: WidgetStatePropertyAll(Colors.blue),
              //   foregroundColor: WidgetStatePropertyAll(Colors.white),
              //   minimumSize: WidgetStatePropertyAll(
              //     Size(double.infinity, 50),
              //   ),
              // ),

              //another way of writing this
              style: ElevatedButton.styleFrom(
                elevation: 15,
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
              ),
              child: const Text('Convert'),
            ),
          ],
        ),
      ),
    );
  }
}
