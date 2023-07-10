import 'package:dio_helper_flutter/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:to_do_expert/Network/Dio.dart';
import 'package:to_do_expert/Screens/login.dart';
import 'package:to_do_expert/coubits/NewsCoubit.dart';
import 'package:to_do_expert/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_expert/states.dart';
import 'Screens/Archived.dart';
import 'Screens/Done.dart';
import 'Screens/Tasks.dart';
import 'Screens/login.dart';
import 'Screens/business.dart';
import 'Screens/login_abdo.dart';
import 'todocoubit.dart';
import 'Network/Dio.dart';
//import 'package:firebase_core/firebase_core.dart';
void main() async{
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  NewsCoubit.getDio();
  runApp(const MyApp());

  }
var context1;
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      //future: Firebase.initializeApp(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
      return MaterialApp(
        title: 'الله اعلم هتظهر فين  ',
        theme: ThemeData(
            primarySwatch: Colors.green,
            primaryColor: Colors.red,
            appBarTheme: AppBarTheme(
                centerTitle: true,
                color: Colors.white,
                elevation: 0.0,
                titleTextStyle: TextStyle(color: Colors.black,fontSize: 40,fontWeight: FontWeight.bold),
                systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarBrightness: Brightness.light,

                ))
        ),
        home:  MyHomePage(title:"Bio Tools App",),
        debugShowCheckedModeBanner: false,
      );
    },

    );
  }
}
class MyHomePage extends StatelessWidget {
   MyHomePage({super.key, required this.title});
  final String title;
  int i =0;
  int ind=0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
    create: (BuildContext context) =>NewsCoubit(initstatnew()),
      child: BlocConsumer<NewsCoubit,statesNews>(
        listener:(context, state)
        {print(state);
        context1=context;
        } ,
        builder:(context,state) {
          NewsCoubit NC =NewsCoubit.get(context);
          return Scaffold(
            body: LoginScreen(),
            // لازم اكتب الليست هنا عشان هو بيروح البلوك يعمل ايميت الاول بعد كدع بيروح يحمل الاسكرينة
            // لو معملتش كدا هيروح يعمل ايميت عادي مع كل كلكية علي الفلوت بس وقتها هيلسن علي الايتم اللي جوة اللست ازاي مش عارف
            floatingActionButton: FloatingActionButton(
              onPressed: (){
                print("----------------------------------");
                print(NewsCoubit.data.length);
                NC.just_emit();
                },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(icon:Icon(Icons.accessibility_new),label: "First Try"),
                BottomNavigationBarItem(icon:Icon(Icons.add),label: "secound Try"),
                BottomNavigationBarItem(icon:Icon(Icons.done),label: "third try"),
              ],
              currentIndex: NC.Switcher,
              onTap: (index){NC.change_switcher(index); ind=index;},
              selectedItemColor: Colors.red,
            ),
          );
        }
      ),
    );
  }
}