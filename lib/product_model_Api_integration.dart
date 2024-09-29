import 'dart:convert';

import 'package:apis_integration/model/product_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductModelApiIntegration extends StatefulWidget {
  const ProductModelApiIntegration({super.key});

  @override
  State<ProductModelApiIntegration> createState() =>
      _ProductModelApiIntegrationState();
}

class _ProductModelApiIntegrationState
    extends State<ProductModelApiIntegration> {
  Future<ProductsModel> getProductApi() async {
    final response = await http.get(
        Uri.parse('https://webhook.site/4aacaa9d-47c8-4d2f-a93a-cb1f18f40dbd'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      return ProductsModel.fromJson(data);
    } else {
      return ProductsModel.fromJson(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Product Model Api',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: FutureBuilder(
                  future: getProductApi(),
                  builder: (context, snapshot) {
                    return ListView.builder(itemBuilder: (context, index) {
                      return Container(
                        height: MediaQuery.sizeOf(context).height * .3,
                        width: MediaQuery.sizeOf(context).width * 1,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount:
                                snapshot.data!.data![index].images!.length,
                            itemBuilder: (context, position) {
                              return Container(
                                height: MediaQuery.sizeOf(context).height * .25,
                                width: MediaQuery.sizeOf(context).width * 1,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(snapshot.data!
                                            .data![index].images![position].url
                                            .toString()))),
                              );
                            }),
                      );
                    });
                  }))
        ],
      ),
    );
  }
}
