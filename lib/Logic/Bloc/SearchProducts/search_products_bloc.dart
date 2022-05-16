import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../Data/Models/ProductsModel.dart';
import '../../../Data/Repo/SearchProductRepo.dart';

part 'search_products_event.dart';
part 'search_products_state.dart';

class SearchProductsBloc extends Bloc<SearchProductsEvent, SearchProductsState> {

  SearchProductRepo searchProductRepo;
  SearchProductsBloc(this.searchProductRepo) : super(SearchProductsInitialState()) {
    on<StartSearchProductEvent>((event, emit) async {
      emit(SearchProductsLoadingState());
      List<ProductsModel> productsList=await searchProductRepo.mapAllSearchedProductsOnModels(event.search);
      emit(SearchProductsLoadedState(productModelList: productsList));
    });
    on<GetNewArrivalAndOnSaleProductsFromCategoriesEvent>((event, emit) async {
      emit(SearchProductsLoadingState());
      List<ProductsModel> newArrivalProductModelList=await searchProductRepo.mapAllProductsOnModels(event.newArrivalId);
      List<ProductsModel> onSaleProductModelList=await searchProductRepo.mapAllProductsOnModels(event.onSaleId);
      emit(GetNewArrivalAndOnSaleProductsLoadedState(newArrivalProductModelList:  newArrivalProductModelList,onSaleProductModelList: onSaleProductModelList));
    });
  }

}
