import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:quotes_app/model_screen/quote_model.dart';
import 'package:cupertino_icons/cupertino_icons.dart';

class Quotes_Edit_Screen extends StatefulWidget {
  const Quotes_Edit_Screen({super.key});

  @override
  State<Quotes_Edit_Screen> createState() => _Quotes_Edit_ScreenState();
}

class _Quotes_Edit_ScreenState extends State<Quotes_Edit_Screen> {
  @override
  Widget build(BuildContext context) {
    QuotesModel model =
        ModalRoute.of(context)!.settings.arguments as QuotesModel;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.purpleAccent,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children:[Container(
              padding: EdgeInsets.all(14),
              height: MediaQuery.of(context).size.width * 0.90,
              width: MediaQuery.of(context).size.width * 0.90,
              decoration: BoxDecoration(color: Colors.lightBlue.shade200,borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "${model.quotes}",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "${model.author}",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
              Spacer(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 60,
                        width: MediaQuery.of(context).size.width*0.90,
                        decoration: BoxDecoration(color: Colors.grey.shade400,borderRadius: BorderRadius.circular(15)),
                       child: Row(
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
                           LikeButton(
                             circleColor:
                             const CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
                             bubblesColor: const BubblesColor(
                               dotPrimaryColor: Colors.pink,
                               dotSecondaryColor: Colors.white,
                             ),
                             likeBuilder: (bool isLiked) {
                               return Icon(
                                 Icons.monitor_heart,
                                 color: isLiked ? Colors.red : Colors.black,
                               );
                             },
                           ),

                         ],
                       ),
                        ),
                      ),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
