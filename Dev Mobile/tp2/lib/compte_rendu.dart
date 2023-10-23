import 'package:flutter/material.dart';

class CompteRendu extends StatefulWidget {
  @override
  _CompteRenduState createState() => _CompteRenduState();
}

class _CompteRenduState extends State<CompteRendu> {
  bool devFront = false;
  bool devBack = false;
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.green,
                padding: EdgeInsets.all(10),
                child: Text(
                  'Training Price',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Dev Front'),
                  Checkbox(
                    value: devFront,
                    onChanged: (value) {
                      setState(() {
                        devFront = value!;
                      });
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Dev Back'),
                  Checkbox(
                    value: devBack,
                    onChanged: (value) {
                      setState(() {
                        devBack = value!;
                      });
                    },
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  updateResult();
                },
                child: Text('Get Value'),
              ),
              Text(
                result,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void updateResult() {
    int p = 0;
    if (devFront) p += 300;
    if (devBack) {
      p += 200;
    }
    if (p == 0)
      result = "No Dev Selected";
    else
      result = "You should pay " + p.toString();
    setState(() {});
  }
}
