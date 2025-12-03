import IO;      ❶  
void squares(int n) {
  println("Table of squares from 1 to <n>\n");    
  for (int I <- [1 .. n + 1])
      println("<I> squared = <I * I>");               
}
