extension Capitalize on String {
  String capitalize() {
    String newString = this;

    for (var i = 0; i < length; i++) {
      if (i == 0) {
        newString = newString.substring(0, 0) + this[i].toUpperCase() + newString.substring(1);
      }
      else if ( this[i - 1] == " ") {
        newString = newString.substring(0, i) + this[i].toUpperCase() + newString.substring(i + 1);
      }
    }
    return newString;
  }
}
