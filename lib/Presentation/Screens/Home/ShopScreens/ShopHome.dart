
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Logic/Bloc/SearchProducts/search_products_bloc.dart';
import '../../../../utilities/constants.dart';
import '../../../Widgets/ProductsWidget.dart';






class ShopHome extends StatefulWidget {
  @override
  _ShopHomeState createState() => _ShopHomeState();
}

class _ShopHomeState extends State<ShopHome> {

  TextEditingController search=TextEditingController();


  int selected=0;

  double top = 0.0;
  final ScrollController _scrollController=ScrollController(keepScrollOffset: true);

  @override
  void initState() {
    super.initState();
    // getNewArrivalProducts();
    BlocProvider.of<SearchProductsBloc>(context).add(GetNewArrivalAndOnSaleProductsFromCategoriesEvent(onSaleId: "0", newArrivalId: "82"));

  }

  getNewArrivalProducts(){
    FocusScope.of(context).unfocus();
    BlocProvider.of<SearchProductsBloc>(context).add(GetNewArrivalAndOnSaleProductsFromCategoriesEvent(onSaleId: "0", newArrivalId: "82"));
  }
  getSearchedProducts(){
    FocusScope.of(context).unfocus();
    BlocProvider.of<SearchProductsBloc>(context).add(StartSearchProductEvent(search: search.text.trim()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: screenBG,
      child:  NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
                expandedHeight: 150.0,
                floating: false,
                pinned: true,
                backgroundColor: screenBG,

                flexibleSpace: LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      top = constraints.biggest.height;
                      print(top);
                      return FlexibleSpaceBar(
                        background: Container(
                          color: screenBG,
                        ),
                          titlePadding: const EdgeInsets.only(bottom: 5),
                          centerTitle: true,
                          title: top >= 150 ?
                          SingleChildScrollView(
                            child: Container(
                              width: MediaQuery.of(context).size.width,

                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              // padding: const EdgeInsets.all(0.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: top/5),//MediaQuery.of(context).padding.top,),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: Row(
                                          children: [
                                            Container(
                                                width:top/7,// MediaQuery.of(context).size.width * 0.2,
                                                child: Image.asset("Assets/logoOnly.png")
                                            ),
                                            const SizedBox(width: 10,),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    '''The Leaf Plants''',
                                                    style:  TextStyle(fontSize: 12, color: btnColor1,fontWeight: FontWeight.bold),
                                                  ),
                                                  Text(
                                                    '''We Grow Trust''',
                                                    style:  TextStyle(fontSize: 10, color:btnColor1,fontWeight: FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                       CircleAvatar(
                                        radius: top/12,
                                        backgroundImage: const AssetImage("Assets/img.jpeg"),
                                        backgroundColor: Colors.white,
                                      ),

                                    ],
                                  ),
                                  const SizedBox(height: 10,),



                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          height: 33,
                                          // width: MediaQuery.of(context).size.width ,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(10),
                                              border: Border.all(
                                                  color: Colors.white
                                              )
                                          ),
                                          child: TextField(
                                            controller: search,

                                            style:const TextStyle(
                                              fontSize:11,

                                            ),
                                            onChanged: (val){
                                              if(val.isEmpty){
                                                getNewArrivalProducts();
                                              }
                                            },
                                            decoration: InputDecoration(
                                                icon: Container(
                                                  height: 30,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                      color: btnColor1,
                                                      borderRadius: BorderRadius.circular(7),
                                                      border: Border.all(
                                                          color: Colors.white
                                                      )
                                                  ),
                                                  child:  InkWell(
                                                      onTap: (){
                                                        // getNewArrivalProducts();

                                                        getSearchedProducts();
                                                      },
                                                      child: const Icon(Icons.search,color: Colors.white,size: 17,)),
                                                ),
                                                hintText: "Search a product",
                                                hintStyle: const TextStyle(
                                                  fontSize:11,

                                                ),


                                                contentPadding: const EdgeInsets.only(bottom: 15),
                                                focusedBorder: InputBorder.none,
                                                disabledBorder: InputBorder.none,
                                                border: InputBorder.none,
                                                fillColor: Colors.white,
                                                filled: true,
                                                focusColor: textColor1
                                            ),
                                          ),
                                        ),
                                      ),

                                      InkWell(
                                        onTap: (){
                                          // Navigator.pushNamed(context, "/Cart");
                                        },
                                        child: Container(
                                            height: 28,
                                            width: 28,
                                            padding: const EdgeInsets.all(5),
                                            margin: const EdgeInsets.only(left: 5),
                                            decoration: BoxDecoration(
                                                color: btnColor1,
                                                borderRadius: BorderRadius.circular(7)
                                            ),
                                            child: const Icon(Icons.shopping_cart_outlined,size: 17,color: Colors.white,)),
                                      ),


                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                              :
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),

                            child:Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 45,
                                    // width: MediaQuery.of(context).size.width ,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: Colors.white
                                        )
                                    ),
                                    child: TextField(
                                      controller: search,
                                      onChanged: (val){
                                        if(val.isEmpty){
                                          getNewArrivalProducts();
                                        }
                                      },
                                      decoration: InputDecoration(
                                          icon: Container(
                                            height: 40,
                                            width: 40,
                                            decoration: BoxDecoration(
                                                color: btnColor1,
                                                borderRadius: BorderRadius.circular(10),
                                                border: Border.all(
                                                    color: Colors.white
                                                )
                                            ),
                                            child: InkWell(
                                                onTap: (){
                                                  getSearchedProducts();

                                                },
                                                child: const Icon(Icons.search,color: Colors.white,size: 25,)),
                                          ),
                                          hintText: "Search a product",
                                          focusedBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          border: InputBorder.none,
                                          fillColor: Colors.white,
                                          filled: true,
                                          focusColor: textColor1
                                      ),
                                    ),
                                  ),
                                ),

                                InkWell(
                                  onTap: (){
                                    // Navigator.pushNamed(context, "/Cart");
                                  },
                                  child: Container(
                                      height: 40,
                                      width: 40,
                                      padding: const EdgeInsets.all(5),
                                      margin: const EdgeInsets.only(left: 5),
                                      decoration: BoxDecoration(
                                          color: btnColor1,
                                          borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: const Icon(Icons.shopping_cart_outlined,size: 25,color: Colors.white,)),
                                ),


                              ],
                            ),

                          ),

                      );
                    })),
          ];
        },
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                const SizedBox(height: 20,),

                // const Text(
                //   '''Categories''',
                //   style: const TextStyle(fontSize: 24, color: Colors.black,fontWeight: FontWeight.w500),
                // ),
                // Container(
                //   margin: const EdgeInsets.symmetric(vertical: 25.0),
                //   height: 40.0,
                //   child:
                //   ListView.builder(
                //     scrollDirection: Axis.horizontal,
                //     itemCount: items.length,
                //     itemBuilder: (context, index) {
                //       return
                //         selected==index?
                //
                //         Container(
                //           height: 40,
                //           decoration: BoxDecoration(
                //               color: Colors.black,
                //               borderRadius: BorderRadius.circular(10)
                //           ),
                //           padding: const EdgeInsets.symmetric(horizontal: 15),
                //           margin: const EdgeInsets.only(right: 15),
                //           child: Center(
                //             child: Text(items[index],
                //               style: const TextStyle(
                //                   color: Colors.white,
                //                   fontSize: 18,
                //                   fontWeight: FontWeight.w300
                //               ),
                //             ),
                //           )
                //       ):
                //         InkWell(
                //           onTap: (){
                //             setState(() {
                //               selected=index;
                //             });
                //           },
                //           child: Container(
                //               height: 40,
                //               decoration: BoxDecoration(
                //                   color: Colors.white70,
                //                   borderRadius: BorderRadius.circular(10),
                //                   border: Border.all(color: Colors.grey)
                //               ),
                //               padding: const EdgeInsets.symmetric(horizontal: 15),
                //               margin: const EdgeInsets.only(right: 15),
                //               child: Center(
                //                 child: Text(items[index],
                //                   style: const TextStyle(
                //                       color: Colors.black,
                //                       fontSize: 18,
                //                       fontWeight: FontWeight.w300
                //                   ),
                //                 ),
                //               )
                //           ),
                //         );
                //     },
                //   )
                // ),

                BlocConsumer<SearchProductsBloc, SearchProductsState>(
                  listener: (context, state) {
                    // TODO: implement listener
                  },
                  builder: (context, state) {
                    if(state is GetNewArrivalAndOnSaleProductsLoadedState){
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text(
                                  '''New Arrival''',
                                  style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.w500),
                                ),
                                // Text(
                                //   '''See All''',
                                //   style: TextStyle(fontSize: 20, color: Colors.black54,fontWeight: FontWeight.w500),
                                // ),
                              ],
                            ),
                          ),


                          ListView.builder(
                              itemCount: (state.newArrivalProductModelList.length/2).ceil(),
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              padding: EdgeInsets.zero,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                // return Container(margin: EdgeInsets.all(10),width: 20,height: 20,color: Colors.red,);
                                return  ProductsRowWidget(item1: state.newArrivalProductModelList[(index*2)],item2: state.newArrivalProductModelList[(index*2)+1],);
                              }
                          ),
                          // ProductsRowWidget(),
                          // ProductsRowWidget(),



                          // Padding(
                          //   padding: const EdgeInsets.symmetric(vertical: 10.0),
                          //
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //     children: const [
                          //       Text(
                          //         '''Popular Items''',
                          //         style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.w500),
                          //       ),
                          //       Text(
                          //         '''See All''',
                          //         style: TextStyle(fontSize: 20, color: Colors.black54,fontWeight: FontWeight.w500),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                        ],
                      );
                    }
                    else if(state is SearchProductsLoadedState){
                      return Column(
                        children: [
                          // Padding(
                          //   padding: const EdgeInsets.symmetric(vertical: 10.0),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.start,
                          //     children: const [
                          //       Text(
                          //         '''New Arrival''',
                          //         style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.w500),
                          //       ),
                          //       // Text(
                          //       //   '''See All''',
                          //       //   style: TextStyle(fontSize: 20, color: Colors.black54,fontWeight: FontWeight.w500),
                          //       // ),
                          //     ],
                          //   ),
                          // ),


                          ListView.builder(
                              itemCount: (state.productModelList.length/2).ceil(),
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              padding: EdgeInsets.zero,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                // return ProductsRowWidget(item1:state.productModelList[1],);

                                if(((index*2)+1)<state.productModelList.length){
                                  return
                                    ProductsRowWidget(item1:state.productModelList[(index*2)],item2:state.productModelList[(index*2)+1]);
                                }
                                else{
                                  return ProductsRowWidget(item1:state.productModelList[(index*2)],);

                                }
                              }
                          ),
                          // ProductsRowWidget(),
                          // ProductsRowWidget(),



                          // Padding(
                          //   padding: const EdgeInsets.symmetric(vertical: 10.0),
                          //
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          //     children: const [
                          //       Text(
                          //         '''Popular Items''',
                          //         style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.w500),
                          //       ),
                          //       Text(
                          //         '''See All''',
                          //         style: TextStyle(fontSize: 20, color: Colors.black54,fontWeight: FontWeight.w500),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                        ],
                      );
                    }
                    else{
                      return Padding(
                        padding: const EdgeInsets.only(top: 100.0),
                        child: Center(child: CircularProgressIndicator(color: btnColor1,)),
                      );
                    }
                  },
                ),
                // const ProductsRowWidget(),
                // const ProductsRowWidget(),



                const SizedBox(
                  height: 50,
                )





              ],
            ),
          ),
        ),
      ),
    );
  }
}

