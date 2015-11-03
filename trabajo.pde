import java.util.Scanner;
Perfectos perf;
Sequence seq;


void setup() {
  background(110);
  size(720, 600);
  perf = new Perfectos();
  perf.author();
  perf.description();

  System.out.println("el n predeterminado para el programa es n = 13 ");
  int n =13;
  System.out.println("el enesimo termino ");
  perf.compute(n);
  System.out.println("Terminos es Array");
  perf.toArray(n); 
  System.out.println("Terminos es String");
  perf.toString(n);
}
int n = 13;
void draw() {
  fill(0);
  text("1.gragica1 2.grafica 2 3. grafica3",80,50);
  if (keyPressed) {
    if (key == '1' || key == 'a') {
      fill(175); 
      rect(0, 0, 720, 600);
      fill(0); 
      perf.display(n);
    } else if (key == '2' || key == 'b') {
      rect(0, 0, 720, 600);
      fill(0);
      strokeWeight(3);
      perf.barChart(n);
    } else if (key == '3' || key == 'c') {
      rect(0, 0, 720, 600);
      fill(255);
      perf.lineChart(n);
    }
  } else {
    fill(255);
  }
  rect(25, 25, 50, 50);
}

/*  perf.display(12);
 perf.barChart(13);
 perf.lineChart(12);
 }*/