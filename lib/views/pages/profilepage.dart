import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  TextEditingController controller = TextEditingController();
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Profile Page',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: controller,
              decoration: InputDecoration(
                labelText: 'Enter your name',
                border: OutlineInputBorder(),
              ),
              onEditingComplete: () {
                setState(() {
                  // Update the UI when editing is complete
                });
              },
            ),
            Text(controller.text),
            Row(
              children: [
                Checkbox(
                  tristate: false,
                  value: isCheck,
                  onChanged: (bool? value) {
                    setState(() {
                      isCheck = value ?? false;
                    });
                  },
                ),
                Text('Accept Terms and Conditions'),
              ],
            ),
            CheckboxListTile(
              title: Text('Accept Terms and Conditions'),
              tristate: false,
              value: isCheck,
              onChanged: (bool? value) {
                setState(() {
                  isCheck = value ?? false;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
