class MyStreams{
  Stream<int> firstStream()async*{
    int count=0;
    for(int i=0; count==15;i++){
      if(i.isOdd){
        yield i;
      }
    }
  }

}

void main(){

  MyStreams().firstStream().listen((event) {print(event);});
}
