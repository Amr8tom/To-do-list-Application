import 'package:flutter/material.dart';
import 'package:to_do_expert/components/Bascis_components.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
class login extends StatelessWidget {
  var emailcontroller=TextEditingController();
  var passwordcontroler=TextEditingController();
  var KeyForm = GlobalKey<FormState>();
  var ibj= FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login"),),
      body: Center(child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: KeyForm,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Login",style:TextStyle(fontSize: 35,fontWeight: FontWeight.bold,),),
              SizedBox(height: 40,),
              TextFormField(
                validator: (val) {
                  if (val.toString().isEmpty) {
                    return "Please add task Time";
                  }
                  return null;
                },
                keyboardType:TextInputType.emailAddress,
                onFieldSubmitted: (x){print(x);},
                controller: emailcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Amr@The_top_one"),
                  prefixIcon: Icon(Icons.login),
                ),
              ),
              SizedBox(height: 20,),
              TextFormField(
                keyboardType:TextInputType.visiblePassword,
                onFieldSubmitted: (x){print(x);},
                obscureText: true,
                controller:passwordcontroler ,

                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Password"),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: MaterialButton(
                  child: Text("Login"),
                    color: Colors.white,
                    onPressed: (){KeyForm.currentState!.validate();
                    print("ya rab traaan ana han han ");
                  }),
              ),
              SizedBox(height: 10,),
             DefaultButton(function: (){}, text:"register"),
            ],
          ),
        ),
      ),),
    );
  }
}
