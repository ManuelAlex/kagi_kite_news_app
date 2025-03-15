extension FirstLetterIndex on String {
  int get firstLetterIndex {
    if (isEmpty) {
      return 0;
    }

    return toUpperCase().codeUnitAt(0) - 'A'.codeUnitAt(0);
  }
}
