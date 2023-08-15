import 'package:flutter/material.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({Key? key}) : super(key: key);

  @override
  State<FeedBack> createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed Back'),
      ),
      body: Stack(children: [
        Container(
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Text('Feel free to write whatever comes to your mind'),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      border: Border.all(style: BorderStyle.solid)),
                  padding: EdgeInsets.all(20),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Send us your feedback',
                        hintStyle: TextStyle(color: Colors.grey)),
                    minLines: 1,
                    maxLines: 10,
                    keyboardType: TextInputType.multiline,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 20,
          right: 20,
          child: ElevatedButton(
            onPressed: () {},
            child: Text('send'),
          ),
        ),
      ]),
    );
  }
}
