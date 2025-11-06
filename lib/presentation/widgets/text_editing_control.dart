import 'package:flutter/material.dart';
import 'package:atmadarsh/core/theme/text_styles.dart';
import 'package:atmadarsh/core/theme/app_colors.dart';

class TextEditingControl extends StatefulWidget {

  final int? maxLine;
  final String? hintText;
  final dynamic? textType;
  final bool isMandatory;
  final bool expend;
  final TextEditingController? textEditingController;
  final String? errorText;

  TextEditingControl({
    this.maxLine=1,
    this.hintText,
    this.textType,
    this.isMandatory=false,
    this.expend=false,
    this.textEditingController,
    this.errorText
});

  @override
  State<TextEditingControl> createState()=> _TextEditingControl();
}

class _TextEditingControl extends State<TextEditingControl>{
  late final TextEditingController _textEditingController;

  @override
  void initState(){
    super.initState();
    _textEditingController=widget.textEditingController ??TextEditingController();
  }

  @override
  Widget build(BuildContext buildContext){
    return Container(
      width: MediaQuery.of(context).size.width*0.4,
      decoration: BoxDecoration(
        border:const Border(
          left: BorderSide(
            color: AppColors.primaryBlack,
            width: 3,
          ),
          bottom: BorderSide(
            color: AppColors.primaryBlack,
            width: 3,
          ),
        ),
      ),
      child:TextField(
          decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: TextStyles(
                textColor: AppColors.textBlack,
                fontSize: 16,
              ).getRegularStyle(),
              contentPadding: EdgeInsets.only(left: 5,bottom: 5,right: 5),
            errorText: widget.errorText,
          ),
          keyboardType: _getInputType(),
          controller:_textEditingController,
          focusNode: null,
          style: TextStyles(fontSize: 16).getBoldStyle(),
          cursorColor: AppColors.textBlack,
          maxLines: widget.expend? null:widget.maxLine,
          expands: widget.expend,
          // scrollPadding: const EdgeInsets.all(10.0),
      )

    );

  }

  TextInputType? _getInputType(){
    if(widget.textType=="Text"){
      return TextInputType.text;
    }else if(widget.textType=="Number"){
      return TextInputType.number;
    }else if(widget.textType=="Email"){
      return TextInputType.emailAddress;
    }else{
      return TextInputType.multiline;
    }
  }
}