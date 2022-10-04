void main(List<String> args) {
  int i = 0;
  print("my name is Zero ${i}");
  List<int> numbers = [5, 2, 4, 6, 1, 3];
  printList(numbers);
  numbers = insertionSort(numbers);
  printList(numbers);
}

void printList(List<int> items) {
  for (int i = 0; i < items.length; i++) {
    print("[ ${items[i]} ]");
  }
  print("===============================");
}

List<int> insertionSort(List<int> items) {
  for (int j = 1; j < items.length; j++) {
    int key = items[j];
    int i = j - 1;
    while (i >= 0 && items[i] > key) {
      items[i + 1] = items[i];
      i--;
    }
    items[i + 1] = key;
  }
  return items;
}
