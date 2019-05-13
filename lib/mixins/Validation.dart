class Validation {
  // FUNGSI validatePassword > NAMA FUNGSI BEBAS
  String validatePassword(String value) { //MENERIMA VALUE DENGAN TYPE STRING
    if (value.isEmpty) { //JIKA PASSWORD KOSONG
      return 'Password Harus Diisi'; //MAKA ERROR AKAN DITAMPILKAN
    }
    return null; //SELAIN ITU LOLOS VALIDASI
  }

  String validateUsername(String value) {
    if (value.isEmpty) { //JIKA VALUE KOSONG 
      return 'Username Harus Diisi'; //MAKA PESAN DITAMPILKAN
    }
    return null;
  }
}