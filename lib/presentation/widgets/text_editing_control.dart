import 'package:flutter/material.dart';
import 'package:atmadarsh/core/theme/text_styles.dart';
import 'package:atmadarsh/core/theme/app_colors.dart';

class TextEditingControl extends StatefulWidget {

  final int? maxLine;
  final String? hintText;
  final dynamic textType;
  final bool isMandatory;
  final bool expend;
  final TextEditingController? textEditingController;
  final String? errorText;
  final void Function(String)? onSubmitted;
  final int? maxLength;

  const TextEditingControl({super.key, 
    this.maxLine=1,
    this.maxLength,
    this.hintText,
    this.textType,
    this.isMandatory=false,
    this.expend=false,
    this.textEditingController,
    this.errorText,
    this.onSubmitted
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
  Widget build(BuildContext buildContext) {
    final bool hasError =
        widget.errorText != null && widget.errorText!.isNotEmpty;
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              decoration: BoxDecoration(
                border: const Border(
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
              child: TextField(
                decoration: InputDecoration(
                    hintText: widget.hintText,
                    hintStyle: TextStyles(
                      textColor: AppColors.textBlack,
                      fontSize: 16,
                    ).getRegularStyle(),
                    contentPadding: EdgeInsets.only(
                        left: 5, bottom: 5, right: 5),
                    // errorText: widget.errorText,
                ),
                keyboardType: _getInputType(),
                controller: _textEditingController,
                focusNode: null,
                style: TextStyles(fontSize: 16).getBoldStyle(),
                cursorColor: AppColors.textBlack,
                maxLines: widget.expend ? null : widget.maxLine,
                maxLength: widget.maxLength,
                expands: widget.expend,
                onSubmitted: (value) {
                  widget.onSubmitted;
                },
                // scrollPadding: const EdgeInsets.all(10.0),
              )
          ),

          ///ERROR TEXT (below border)
          if (hasError)
          Padding(
            padding: const EdgeInsets.only(top: 6, left: 6),
            child: Text(
              widget.errorText!,
              style: TextStyles(
                textColor: Colors.red,
                fontSize: 12,
              ).getMediumStyle(),
            ),
          ),
        ],
      ),

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