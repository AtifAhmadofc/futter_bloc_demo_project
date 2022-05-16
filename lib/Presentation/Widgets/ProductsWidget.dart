import 'package:flutter/material.dart';

import '../../Data/Models/ProductsModel.dart';
import '../../utilities/constants.dart';

class ProductsRowWidget extends StatelessWidget {
   ProductsRowWidget({
     required this.item1,
     this.item2,
    Key? key,
  }) : super(key: key);

   ProductsModel item1;
   ProductsModel? item2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          productWidget(productsModel: item1),
          item2!=null?
          productWidget(productsModel: item2!):Container(),
        ],
      ),
    );
  }
}

class productWidget extends StatelessWidget {
   productWidget({
    required this.productsModel,
    Key? key,
  }) : super(key: key);

  ProductsModel productsModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        // Navigator.pushNamed(context, "/ProductDetails",arguments: productsModel);

      },
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.42,
            padding: EdgeInsets.only(bottom: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: productBGColor1,
                boxShadow: [
                  BoxShadow(color: Colors.grey.withOpacity(0.6),
                    spreadRadius: 2,
                    blurRadius: 4,
                  ),
                ]
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.42,
                  height: MediaQuery.of(context).size.height * 0.23,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),

                    image:
                    (productsModel.images==null||productsModel.images!.length==0)?
                    DecorationImage(
                        image: AssetImage("Assets/demo.jpg"),
                        fit: BoxFit.cover
                    ):
                    DecorationImage(
                        image: NetworkImage(productsModel.images!.first.src.toString()),
                        fit: BoxFit.cover
                    ),
                    // color: Colors.blue,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10,top: 5),
                  child: Text(

                    productsModel.name.toString(),
                    style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w500),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10,top: 0,right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Text(
                      //   "Areca Palm",
                      //   style: TextStyle(fontSize: 12, color: Colors.black54,fontWeight: FontWeight.w500),
                      // ),
                      Text(
                        " AED ${productsModel.price.toString()}",
                        style: TextStyle(fontSize: 12, color: btnColor1,fontWeight: FontWeight.w500),
                      ),
                      CircleAvatar(
                        child: Icon(Icons.add,size: 20,color: Colors.white,),
                        radius: 15,
                        backgroundColor: Colors.black,
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
          // Positioned(
          //   right: 15,
          //   top: 15,
          //   child: Container(
          //       height: 20,
          //       width: 20,
          //       color: Colors.white,
          //       child: Icon(Icons.favorite,color: Colors.grey,size: 18,)),
          // )
        ],
      ),
    );
  }
}
