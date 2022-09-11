
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class NotesPage extends StatelessWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final String title = "Create Your First note";
    final String _buttonText = "Create A Note";
    final String _textButtonContent = "Import Notes";

    Size size  = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ProjectPagePaddings(
        child: Center(
          child: Column(
            children: [
              CustomPageIamge(imageUrl: ImageItems.bookImage),
              Padding(
                padding: PaddingItems.verticalPad,
                child: ProjectTitles(title: title),
              ),
              ProjectSubtitles(),
              SizedBox(height: 70,),
              SizedBox(
                width: 300,
                child: ProjectButtons(text: _buttonText,onPressed: (){},)
              ),
              ProjectTextButtons(content:_textButtonContent,),
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectTextButtons extends StatelessWidget with ColorItems {
  final String content;
   ProjectTextButtons({
    Key? key,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){},
      child: Text(
        content,
        style: TextStyle(color: blueColor),
      )
    );
  }
}

class ProjectButtons extends StatelessWidget with ColorItems{
  final String text;
  final void Function() onPressed;

    ProjectButtons({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style:ElevatedButton.styleFrom(primary: blueColor),
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.only(right:10,left: 10,top: 12,bottom: 12 ),
        child: Text(text,style: Theme.of(context).textTheme.headline6?.copyWith(
          color:whiteColor
        )),
      )
    );
  }
}

class ProjectSubtitles extends StatelessWidget {
  final TextAlign textAlign;
  const ProjectSubtitles({
    Key? key,
    this.textAlign = TextAlign.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Add a note "*10,
    textAlign: textAlign,
    style: Theme.of(context).textTheme.subtitle2?.copyWith(
      color: Color.fromARGB(221, 61, 61, 61),
    ));
  }
}
class ProjectTitles extends StatelessWidget{
  final String title;
  const ProjectTitles({
    Key? key,
    required this.title,
    }) : super(key: key);


  @override
  Widget build(BuildContext context) {
  
    return Text(title,
    textAlign: TextAlign.center,
    style:Theme.of(context).textTheme.headline6?.copyWith(
      color: Colors.black,
      fontWeight: FontWeight.w500,
      
    ));
  }

}

class ImageItems{
  static final String bookImage = "assets/Images/book.png";
}
class PaddingItems {
  static final EdgeInsets horizantolPad  = EdgeInsets.symmetric(horizontal: 20);
  static final EdgeInsets verticalPad  = EdgeInsets.symmetric(vertical: 10);
}
class ColorItems{
  final Color blueColor = Color.fromRGBO(25, 118, 210, 1);
  final Color whiteColor = Colors.white;
}

class CustomPageIamge extends StatelessWidget {
  final String imageUrl; 
  const CustomPageIamge({
    Key? key,
    required this.imageUrl
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(imageUrl,fit: BoxFit.cover);
  }
}

class ProjectPagePaddings extends StatelessWidget{
  final Widget child;
  const ProjectPagePaddings({Key? key,required this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size  = MediaQuery.of(context).size;
    // TODO: implement build
    return Padding(
      padding:PaddingItems.horizantolPad,
      child: child,
    );
  }
}