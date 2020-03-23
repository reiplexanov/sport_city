
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snaplist/snaplist.dart';
import 'package:sportcity/home/blocs/Platform/Platform_state.dart';
import 'package:sportcity/home/blocs/Platform/index.dart';
import 'package:sportcity/home/widgets/components/My_box.dart';

class MyCardList extends StatelessWidget{

  
  final PlatformState state;


 MyCardList({
  Key key,
  @required this.state,
 
  }) : super(key: key);

  List<String> urls = [
    "https://image.tmdb.org/t/p/w370_and_h556_bestv2/2uNW4WbgBXL25BAbXGLnLqX71Sw.jpg",
    "https://image.tmdb.org/t/p/w370_and_h556_bestv2/lNkDYKmrVem1J0aAfCnQlJOCKnT.jpg",
    "https://image.tmdb.org/t/p/w370_and_h556_bestv2/wrFpXMNBRj2PBiN4Z5kix51XaIZ.jpg",
    "https://image.tmdb.org/t/p/w370_and_h556_bestv2/r6pPUVUKU5eIpYj4oEzidk5ZibB.jpg",
    "https://image.tmdb.org/t/p/w370_and_h556_bestv2/x1txcDXkcM65gl7w20PwYSxAYah.jpg",
    "https://image.tmdb.org/t/p/w370_and_h556_bestv2/ptSrT1JwZFWGhjSpYUtJaasQrh.jpg",
    "https://image.tmdb.org/t/p/w370_and_h556_bestv2/wMq9kQXTeQCHUZOG4fAe5cAxyUA.jpg",
    "https://image.tmdb.org/t/p/w370_and_h556_bestv2/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg",
  ];
  
   


  @override
  Widget build(BuildContext context) {
      final Size cardSize = Size(270.0, 460.0);
      // (MediaQuery.of(context).size.width / 2, MediaQuery.of(context).size.height / 2,);
    return SnapList(
      padding: EdgeInsets.only(left: (MediaQuery.of(context).size.width - cardSize.width) / 2),
      sizeProvider: (index, data) => cardSize,
      separatorProvider: (index, data) => Size(10.0, 10.0),
       positionUpdate: (int index) {
            if (index == urls.length - 1) {
              _loadMoreItems();
            }
          },
          builder: (context, index, data) {
            return ClipRRect(
              borderRadius: new BorderRadius.circular(16.0),
              child:GestureDetector(
                onTap: ()=>{
                  BlocProvider.of<PlatformBloc>(context).add(LoadPlatforms()),
                  

                },
                child:  Container(
                  // width:  MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: (DecorationImage(
                      image:NetworkImage('https://ksil72.ru/wp-content/uploads/2018/02/IMG_7545-723x591.jpg'),
                      fit: BoxFit.cover
                      )
                    )
                  ),
                ),
              )
            );
          },
      count: urls.length,
    );
  }


  void _loadMoreItems() {
   
      urls = new List.from(urls)..addAll(urls);

  }
}

/* 
ListView.builder(

      scrollDirection: Axis.horizontal,
      itemBuilder: (context,index)=>My_box(
        onPressed: ()=>{
          print('asdasd')
        },
        title: 'title $index', 
      ),
      itemCount: 15,  
    ); 
*/