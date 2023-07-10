import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:to_do_expert/Network/Dio.dart';
import 'package:to_do_expert/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class NewsCoubit extends Cubit<statesNews> {
  NewsCoubit(super.initialState);
  var Switcher=0;
  void change_switcher(index){
    Switcher=index;
        emit(initstatnew1());
  }
  static NewsCoubit get(context) => BlocProvider.of(context);
  static List data=[];
  static Future getDio () async{
    DioHelper.GetData("/v2/everything", {
      "q":"tesla",
      "from":"2022-11-22",
      "sortBy":"publishedAt",
      "apiKey":"4331811f993a4055b467eba3237eca0f"}).then((value) => data=value.data["articles"]);

  }
void just_emit(){
    emit(initstatnew3());
}

  bool check=false;
  void coditionalbuilder(){
    if (data.length==0){
      check=false;
      emit(initstatnew2());
    }else{
      check=true;
      emit(initstatnew2());}
  }

}