import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';

class SignInForm extends StatelessWidget {
  final form = FormGroup({
    "name":
    FormControl(

        validators:
        [
          Validators.required, Validators.maxLength(10),
          Validators.required,Validators.minLength(4)
        ]
    ),
    "email":
    FormControl(
        validators:
        [
          Validators.required,
          Validators.email
        ]
    ),
    "password":
    FormControl(
        validators:
        [
          Validators.required,
          Validators.minLength(6)
        ]
    ),
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ReactiveForm(
          formGroup: form,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              ReactForm(formCtlName: "email", hintTxt: "Email",securePassword: false,),
              SizedBox(height: 20,),
              ReactForm(formCtlName: "password", hintTxt: "Password",securePassword: true,),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Text("Forgot password",
                  style: TextStyle(
                  decoration: TextDecoration.underline
                ),),
              ),
              SizedBox(
                height: 30,
              ),
              ReactiveFormConsumer(builder: (context,form, child){
                return  Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: TextButton(
                      onPressed: (){},
                      child: Text("Login",style: TextStyle(
                        color: Colors.black,
                          fontSize: MediaQuery.of(context).size.width * 0.03
                      ),)
                  ),
                );
              }
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class ReactForm extends StatelessWidget {
  final String formCtlName;
  final String hintTxt;
  final bool securePassword;

  ReactForm({required this.formCtlName, required this.hintTxt, required this.securePassword});
  
  @override
  Widget build(BuildContext context) {
    return ReactiveTextField(
      obscureText: securePassword,
      style: TextStyle(
          color: Colors.black
      ),
      formControlName: formCtlName,
      validationMessages: (control) => {
        ValidationMessage.required : "This field cannot be empty",
        ValidationMessage.email : "The email field cannot ce empty",
        ValidationMessage.minLength : "The enter text cannot be less than 6 characters",
      },
      decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: hintTxt,
          focusedBorder: OutlineInputBorder(
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15)
          )
      ),
    );
  }
}
