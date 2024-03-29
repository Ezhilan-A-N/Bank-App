import 'package:bank_app/model/customer.dart';
import 'package:bank_app/widgets/customcard.dart';
import 'package:flutter/material.dart';

class AdminDetailsScreen extends StatefulWidget {
  static const routeNamed = '/AdminDetails';

  @override
  _AdminDetailsScreenState createState() => _AdminDetailsScreenState();
}

class _AdminDetailsScreenState extends State<AdminDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var query = ModalRoute.of(context).settings.arguments  as Customer;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.indigoAccent, title: Text("Ezhilan A N"),),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
           CircleAvatar(
             radius : 50,
             backgroundImage: AssetImage("assets/images/profilepic.jpg"),),
             Text(
               "Ezhilan A N",
               style: TextStyle(
                 fontSize: 25,
                 color: Colors.blueAccent,),
                ),
                const Divider(
                  color: Colors.black,
                  height: 20,
                  thickness: 3,
                  endIndent: 0,
                ),
                CustomCard(icon: Icons.account_box_outlined, title: 'Account No: ${query.id}',),
                CustomCard(icon: Icons.account_balance_wallet_sharp, title: 'Balance: Rs.${query.balance}',),
          ],
        ),
      ),
    );
  }
}