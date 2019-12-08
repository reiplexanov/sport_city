class MyChangeTag{

  String ttext = 'tag:';

  changeTagText(String text){

    if (text != null){

      String tag = '';
      
      // int start = text.indexOf('#');
      // int end = text.indexOf(' ');
      // print('asdad' + end.toString());

      // print('string :' + text.substring(start+1,end));

      for (int i = 0;i< text.length;i++ ){
        if (text[i] == '#' ){
          tag = tag + text.substring(text.indexOf('#',i),text.indexOf(' ',i)) + ' ';
        }
        // print(' tag = '+tag.replaceAll('#', ''));
      }
      this.ttext = 'tag: ' + tag.replaceAll('#', '');  
      return print(this.ttext);
    }
  }

  String getalltag(){
    return this.ttext;
  }


}