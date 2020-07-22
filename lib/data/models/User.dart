
import 'package:lots_land/data/enums/JenisKelamin.dart';

class People {

}

class Customer extends People{
  String nama ;
  String noTelp;
  String alamat;
  JenisKelamin jenisKelamin;
  String urlImage;

  Customer(this.nama, this.noTelp,this.jenisKelamin,this.alamat,{this.urlImage =""}




  );

  String toString() {
    return 'Customer{nama: $nama, noTelp: $noTelp, alamat: $alamat, jenisKelamin: $jenisKelamin, urlImage: $urlImage}';
  }
}


 List<Customer> dummyUser = [
  Customer("Ilham", "082307304530",JenisKelamin.Pria,"Bandar Lampung",
      urlImage: "https://cdn0.iconfinder.com/data/icons/octicons/1024/mark-github-512.png"),
   Customer("Harloom", "08913213131",JenisKelamin.Pria,"Bandar Lampung",
       urlImage: "https://cdn0.iconfinder.com/data/icons/octicons/1024/mark-github-512.png"),
   Customer("Agung", "08464654654",JenisKelamin.Wanita,"Bandar Lampung",
       urlImage: "https://cdn0.iconfinder.com/data/icons/octicons/1024/mark-github-512.png"),
   Customer("Nanda", "08454654646",JenisKelamin.Pria,"Bandar Lampung",
       urlImage: "https://cdn0.iconfinder.com/data/icons/octicons/1024/mark-github-512.png"),
   Customer("Rahnat", "084546416464",JenisKelamin.Pria,"Bandar Lampung",
       urlImage: "https://cdn0.iconfinder.com/data/icons/octicons/1024/mark-github-512.png"),
   Customer("Bagus", "0845464546464",JenisKelamin.Pria,"Bandar Lampung",
       urlImage: "https://cdn0.iconfinder.com/data/icons/octicons/1024/mark-github-512.png"),
];