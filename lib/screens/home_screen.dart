import 'package:apple_store_app/data/data_file.dart';
import 'package:apple_store_app/utils/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/text_utils.dart';
import 'detail_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String>categoryList=["Special offer","iPhone","iPad","Watch"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).iconTheme.color,
        leading:const  Icon(CupertinoIcons.equal),
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
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(

          children: [
            ShowUpAnimation(
              delay: 200,
                child: Center(child: TextUtil(text: "Apple Store",weight: true,size: 30,))),
           const  SizedBox(height: 20,),
           ShowUpAnimation(
             delay: 300,
             child:  SizedBox(
             height: 20,
             child: ListView.builder(
                 shrinkWrap: true,
                 itemCount: categoryList.length,
                 scrollDirection: Axis.horizontal,
                 itemBuilder: (context,index){
                   return Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 20),
                     child: TextUtil(text: categoryList[index],weight: true,size: index==0?15: 13,color: index==0?Colors.white:Colors.grey,),
                   );

                 }),
           ),),
            const SizedBox(height: 20,),
            Expanded(
              child: ShowUpAnimation(
                delay: 400,
                child: GridView.count(
                  shrinkWrap: true,
                  primary: false,
                  childAspectRatio: 0.75,
                  padding: const EdgeInsets.all(10),
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  crossAxisCount: 2,
                
                  children: <Widget>[
                    for(int i=0;i<itemList.length;i++)...[ GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DetailScreen(data:itemList[i] ,)));
                      },
                      child: Container(
                
                        padding: const EdgeInsets.all(8),
                       decoration: BoxDecoration(
                         color: Colors.transparent,
                         border: Border.all(color: Colors.grey.shade800),
                         borderRadius: BorderRadius.circular(20)
                       ),
                        child: Column(
                          children: [
                            Expanded(child: Hero(
                              tag: itemList[i].image,
                
                              child: Container(
                               margin:const  EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(itemList[i].image)
                                  )
                                ),
                              ),
                            )),
                            TextUtil(text: itemList[i].title,weight: true,size: 16,),
                            TextUtil(text: itemList[i].description,color: Colors.grey,size: 10,),
                            TextUtil(text: itemList[i].price,weight: true,size: 20,),
                          ],
                
                        )
                      ),
                    ),]
                
                
                  ],
                ),
              ),
            )


          ],

        ),
      ),
    );
  }
}
