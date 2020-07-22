

enum JenisKelamin{
  Pria,
  Wanita
}

extension ParseToString on JenisKelamin{
  String toShortString(){
    return this.toString().split(',').last;
  }
}