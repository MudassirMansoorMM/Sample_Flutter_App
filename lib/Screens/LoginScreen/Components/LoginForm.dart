import 'package:flutter/material.dart';
import 'package:sample_flutter_app/Widgets/CircularContainer.dart';

import '../../../Constants.dart';


class LoginForm extends StatefulWidget {

  final GlobalKey<FormState> formKey;
  final TextEditingController email;
  final TextEditingController password;
  final BuildContext context;

  LoginForm({
    @required this.formKey,
    @required this.email,
    @required this.password,
    @required this.context
  });

  @override
  _LoginFormState createState() => _LoginFormState();

}

class _LoginFormState extends State<LoginForm> {

  bool _obscureText = true;




  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      decoration: circularEdges(20, 20, 20, 20, Colors.white),

      child: Form(
        key: widget.formKey,
        child: Column(
          children: [



            /// Email Field
            TextFormField(
              controller: widget.email,
              style: Theme.of(context).textTheme.headline1,
              decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: Theme.of(context).textTheme.headline1
              ),
              validator: (value)=>validatorEmail(value),
            ),

            /// Password Field
            TextFormField(
              controller: widget.password,
              obscureText: _obscureText,
              style: Theme.of(context).textTheme.headline1,

              decoration: InputDecoration(
                  suffix: InkWell(

                    // Invert the visibility boolean on tap
                    onTap: ()=> togglePasswordVisibility(),

                    // Icon Button for making the password text visible
                    child: Icon(
                      _obscureText ? Icons.visibility_off_rounded : Icons.visibility,
                      color: Colors.black,),
                  ),

                  labelText: "Password",labelStyle: Theme.of(context).textTheme.headline1
              ),

              validator: (value)=> validatorPassword(value),
            ),


          ],
        ),
      ),

    );

  }


  void togglePasswordVisibility(){
    setState(() {
      _obscureText = !_obscureText;
    });
  }


  validatorPassword(String value){

    if(value.length == 0){

      return 'Please Enter Password';

    }else if(value.length < 4 ){

      return 'Password must be 4 Characters long';

    }else return null;

  }

  validatorEmail(String value){

    if(value.length == 0){

      return 'Please Enter Email';

    }else return null;

  }



}
