import 'package:flutter/material.dart';

class ScreenAdditionalInfo extends StatefulWidget {
  const ScreenAdditionalInfo({Key? key}) : super(key: key);

  @override
  State<ScreenAdditionalInfo> createState() => _ScreenAdditionalInfoState();
}

class _ScreenAdditionalInfoState extends State<ScreenAdditionalInfo> {
  bool eccc = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Additional Information')),
        backgroundColor: const Color.fromARGB(255, 20, 110, 180),
      ),
      body: Column(
        children: [
          ListTile(
            onTap: (() {}),
            leading: const Icon(Icons.share, size: 30),
            title: const Text(
              'Share Dukkan App',
              style: TextStyle(fontSize: 20),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            onTap: (() {}),
            leading: const Icon(Icons.chat, size: 30),
            title: const Text(
              'Share Dukkan App',
              style: TextStyle(fontSize: 20),
            ),
            trailing: const Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            onTap: (() {}),
            leading: const Icon(Icons.chat_bubble, size: 30),
            title: const Text(
              'Share Dukkan App',
              style: TextStyle(fontSize: 20),
            ),
            trailing: Switch(
              value: eccc,
              onChanged: (value) {
                setState(
                  () {
                    eccc = value;
                    //eccc = !eccc;
                  },
                );
              },
            ),
          ),
          ListTile(
            onTap: (() {}),
            leading: const Icon(Icons.lock, size: 30),
            title: const Text(
              'Privacy Policy',
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            onTap: (() {}),
            leading: const Icon(Icons.grade, size: 30),
            title: const Text(
              'Rate Users',
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            onTap: (() {}),
            leading: const Icon(
              Icons.logout,
              size: 30,
            ),
            title: const Text(
              'Sign Out',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  'version',
                  style: TextStyle(color: Colors.black26, fontSize: 17),
                ),
                Text(
                  '2.4.2',
                  style: TextStyle(color: Colors.black45, fontSize: 18),
                ),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
