import 'package:firebase_05/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiHelper{
  static myHomeScreenText(String text1,String text2){
    return Center(
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text(text1,style: MyHomeText1Style,),Text(text2,style:MyHomeText2Style ,)
      ],),
    );
  }
  static myTextField(String text,
      TextEditingController controller,IconData iconData,bool toHide){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      child: TextField(
        obscureText: toHide,
        controller: controller,
        decoration: InputDecoration(
          hintText: text,
          suffixIcon: Icon(iconData),
        ),
      ),
    );
  }
  static myButton(VoidCallback voidCallBack,String text){
    return ElevatedButton(
      onPressed: () {
      voidCallBack();
    }, child: Text(text,style: MyButtonTextStyle,),
    );
  }
  static myRowText(String text1,String text2,VoidCallback voidCallBack){
    return Row( mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text(text1),
      TextButton(onPressed: () {
        voidCallBack();
      }, child: Text(text2))
    ],);
  }
  
  
}