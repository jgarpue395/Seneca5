import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:open_mail_app/open_mail_app.dart';
import 'package:provider/provider.dart';
import 'package:seneca/models/user.dart';
import '../providers/user_provider.dart';

class PersonalScreen extends StatelessWidget {
  const PersonalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    List<User> userList = userProvider.userList;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Personal del centro"),
      ),

      body: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(userList[index].nombreCompleto),
            onTap: () => informacionPersonal(context, userList[index]),
          );
        },
      ),
    );
  }

  void informacionPersonal(BuildContext context, User user) {
    showDialog(
      context: context,
      builder: (buildcontext) {
        return AlertDialog(
          title: Text(user.nombreCompleto),
          content: SizedBox(
            height: 100,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    List<String> to = [user.mail];
                    OpenMailApp.composeNewEmailInMailApp(emailContent: EmailContent(to: to));
                  },
                  child: Text("Correo: ${user.mail}", style: const TextStyle(fontSize: 18))
                ),

                TextButton(
                  onPressed: () => FlutterPhoneDirectCaller.callNumber(user.telefono),
                  child: Text("Telefono: ${user.telefono}", style: const TextStyle(fontSize: 18))
                ),
              ],
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: const Text(
                "CERRAR",
                style: TextStyle(color: Color.fromARGB(255, 38, 45, 255)),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      }
    );
  }
}