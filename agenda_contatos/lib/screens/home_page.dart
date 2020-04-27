import 'package:agenda_contatos/helpers/contact_helper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  ContactHelper helper = ContactHelper();

  @override
  void initState() {
    super.initState();

    Contact c = Contact();
    c.name = "Rutra Santos";
    c.email = "artursantos30@gmail.com";
    c.phone = "44332325";
    c.img = "imgtest2";

    helper.saveContact(c);

    helper.getAllContacts().then((list) {
      print(list);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}