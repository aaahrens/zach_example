import 'dart:async';

import 'package:flutter_web3/ethereum.dart';
import 'package:fuzzballs/nft.dart';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:petstore_api/api.dart';
import 'package:web3dart/web3dart.dart';

class MorePlease extends StatefulWidget {
  const MorePlease({Key? key}) : super(key: key);

  @override
  _MorePleaseState createState() => _MorePleaseState();
}

class _MorePleaseState extends State<MorePlease> {
  String? currentAddress;
  int? currentChain;
  GlobalKey<FormState> _formKey = GlobalKey();
  String? tempAddress;

  _MorePleaseState() {
    listenToEth();
  }

  connectProvider() async {
    if (Ethereum.isSupported) {
      final accs = await ethereum!.requestAccount();
      debugPrint("hello ${accs}");
      var chain = await ethereum!.getChainId();
      if (accs.isNotEmpty) {
        setState(() {
          currentAddress = accs.first;
          currentChain = chain;
        });
      }
    }
  }

  _signOut() {

  }

  listenToEth() {
    ethereum?.onAccountsChanged((accounts) {
      setState(() {
        currentAddress = accounts.first;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var currAddress = currentAddress;
    if (!Ethereum.isSupported) return Text("this app is not supported");
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                debugPrint("connecting provider");
                connectProvider();
              },
              child: Text("login")),
          Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  onChanged: (s) {
                    setState(() {
                      tempAddress = s;
                    });
                  },
                  initialValue: tempAddress,
                  decoration: const InputDecoration(
                      border: UnderlineInputBorder(), labelText: 'Address'),
                ),
                ElevatedButton(
                    onPressed: () {
                      _formKey.currentState?.save();
                      setState(() {
                        currentAddress = tempAddress;
                      });
                    },
                    child: Text("hard set address"))
              ],
            ),
          ),
          Text("is logged in $currentAddress"),
          if (currAddress != null) FetchCurrentNFT(address: currAddress)
        ],
      ),
    );
  }
}
