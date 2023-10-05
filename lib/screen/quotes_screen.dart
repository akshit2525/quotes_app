import 'package:flutter/material.dart';
import 'package:quotes_app/model_screen/quote_model.dart';
import 'package:quotes_app/uttils/global.dart';

class QuotesScreen extends StatefulWidget {
  const QuotesScreen({super.key});

  @override
  State<QuotesScreen> createState() => _QuotesScreenState();
}

class _QuotesScreenState extends State<QuotesScreen> {
  @override
  Widget build(BuildContext context) {
    List<QuotesModel> q1 =
        ModalRoute.of(context)!.settings.arguments as List<QuotesModel>;

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              "${Global.g1.catename}",
            ),
          ),
          body: ListView.builder(
            itemCount: q1.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.all(10),
                height: 310,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: q1[index].color,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "${q1[index].quotes}",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("${q1[index].author}",
                        style: TextStyle(
                          fontSize: 26,
                        )),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.download_rounded),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.photo_album_outlined),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.palette),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.copy),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.share),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            QuotesModel model = q1[index];
                            Navigator.pushNamed(context, 'QuotesEdit',
                                arguments: model);
                          },
                          child: Icon(Icons.fullscreen_outlined),
                        ),
                        // IconButton(onPressed: (){}, icon: Icon(Icons.fullscreen_sharp),),
                      ],
                    ),
                  ],
                ),
              );
            },
          )),
    );
  }
}
