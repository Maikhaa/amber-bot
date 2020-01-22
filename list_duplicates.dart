int removeDuplicates(List list) {
 for (var i = 0; i < list.length - 1; i++) {
   while (list[i] == list[i + 1]) {
     list.remove(list[i + 1]);
   }
 }
 return list.length;
}

int findUnique(List list) {
 if (list == null || list.isEmpty) {
   return 0;
 }

 var unique = 1;

 for (var i = 0; i < list.length - 1; i++) {
   if (list[i] != list[i + 1]) {
     unique++;
   }
 }

 return unique;
}

main() {
 print(removeDuplicates([0, 0, 1, 1, 1, 2, 2, 3, 3, 4]));
 print(findUnique([0, 0, 1, 1, 1, 2, 2, 3, 3, 4]));
}
