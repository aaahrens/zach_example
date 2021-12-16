import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:petstore_api/api.dart';

class FetchCurrentNFT extends StatefulWidget {
  final String address;

  const FetchCurrentNFT({Key? key, required this.address}) : super(key: key);

  @override
  _FetchCurrentNFTState createState() => _FetchCurrentNFTState();
}

class NFTData {
  final String family;
  final String name;
  final String payload;

  NFTData(this.family, this.name, this.payload);
}

class _FetchCurrentNFTState extends State<FetchCurrentNFT> {
  List<NFTData> data = [];

  fetchNFT() async {
    var client = AccountApi();
    client.apiClient.addDefaultHeader("X-API-Key",
        "m4ggvFLDWO4I6PSFAkAcvXI86pJiNUuxJKkAejt5F5AlCp7Cu1KXXG5G1ArLCnjP");
    var resp = await client.getNFTs(this.widget.address, chain: ChainList.eth);
    setState(() {
      data = resp.result.map((element) {
        return NFTData(element.symbol, element.name, element.metadata);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
            onPressed: () {
              fetchNFT();
            },
            child: Text("show me my nfts")),
        if (data.isEmpty) Text("no nfts currently found"),
        Flexible(
          child: ListView.builder(
            shrinkWrap: true,
            itemBuilder: (ctx, index) {
              var i = data[index];
              return Column(
                children: [
                  Text("grouping ${i.family}"),
                  Text("name: ${i.name}"),
                  Text("raw block data ${i.payload}")
                ],
              );
            },
            itemCount: data.length,
          ),
        )
      ],
    );
  }
}
