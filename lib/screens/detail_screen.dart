import 'package:apple_store_app/utils/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/data_file.dart';
import '../utils/text_utils.dart';
class DetailScreen extends StatefulWidget {
 final  Item data;
  const DetailScreen({super.key,required this.data});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  List<Color>colorList=[
    const Color(0xff4a1728),
   const  Color(0xff474747),
    const  Color(0xfff8f8f8),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).iconTheme.color,

        title: SizedBox(
          height: 30,
          width: 30,
          child: Image.asset("assets/logo.png"),
        ),
        actions: const[
          Icon(CupertinoIcons.bag,color: Colors.grey,),
          SizedBox(width: 20,)
        ],
      ),
      body: Column(

        children: [
          Container(
            padding:const  EdgeInsets.all(20),
            height: MediaQuery.of(context).size.height*0.4,
           child: Hero(
             tag:widget.data.image,
               child: Image.asset(widget.data.image,)),
          ),
          Expanded(
            child: Container(
             
             padding: const EdgeInsets.symmetric(vertical: 40,horizontal: 20),
             decoration: const BoxDecoration(
                 color: Color(0xff171719),
               borderRadius: BorderRadius.vertical(top: Radius.circular(40))
             ),
              child: Column(
                children: [
                  const  Spacer(),
                  ShowUpAnimation(
                    delay: 200,
            
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextUtil(text:widget.data.title,size: 20,weight: true,),
                        TextUtil(text:widget.data.price,size: 20,weight: true,)
                      ],
                    ),
                  ),
                  const  Spacer(),
                  ShowUpAnimation(
                    delay: 300,
                      child: TextUtil(text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",size: 12,)),
                  const  SizedBox(height: 20,),
                 const  Spacer(),
                  ShowUpAnimation(
                    delay: 500,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(height: 40,width: 150,decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                            color:const  Color(0xff1673e2)),
                          alignment: Alignment.center,
                          child: TextUtil(text: "Book Now",weight: true,size: 14,),
                        ),

                       Row(
                         children: [
                           for(int i=0;i<colorList.length;i++)...[
                             Container(
                               height: 20,
                               width: 20,
                               margin:const  EdgeInsets.symmetric(horizontal: 10),
            
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 border: Border.all(color:i==1? Colors.white:Colors.transparent),
                                 color: colorList[i]
                               ),
                             )
                           ]
                         ],
                       )
                      ],
                    ),
                  ),
                ],
            
              ),
            ),
          )







        ],

      ),
    );
  }
}
