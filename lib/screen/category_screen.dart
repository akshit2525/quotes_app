import 'package:flutter/material.dart';
import 'package:quotes_app/model_screen/quote_model.dart';
import 'package:quotes_app/uttils/global.dart';

import '../model_screen/category_model.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  void initState() {
    super.initState();

    Global.g1.QuotesList.map((e) {
      QuotesModel q1 = QuotesModel.fromMap(e);
      Global.g1.modelList.add(q1);
    }).toList();
  }

  bool isgrid = true;

  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade300,
          appBar: AppBar(
            actions: [
              IconButton(onPressed: () {
                setState(() {
                  isgrid = !isgrid;
                });
              }, icon: Icon(isgrid ? Icons.list : Icons.grid_on_rounded),),
            ],
            title: const Text(
              "All Best English Quotes",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            centerTitle: true,
          ),
          body: isgrid ? GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisExtent: 150),
            itemCount: Global.g1.categoryList.length,
            itemBuilder: (context, index) {
              return containerTile(Global.g1.categoryList [index]);
            },
          ) : ListView.builder(itemCount: Global.g1.categoryList.length,
              itemBuilder: (context, index) {
                return containerTile(Global.g1.categoryList[index]);
              }
          ),
        ),
    );
  }

  Widget containerTile(categoryModel c1) {
    return InkWell(
      onTap: () {
        List<QuotesModel> q1 = [];
        Global.g1.catename=c1.name;

        for (var a in Global.g1.modelList) {
          if (a.category == c1.name) {
            q1.add(a);
          }
        }

        Navigator.pushNamed(context, 'quotes', arguments: q1);
      },


      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: c1.color,
        ),
        margin: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("${c1.name}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(
              height: 25,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                '${c1.image}',
                height: 60,
                width: 60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
