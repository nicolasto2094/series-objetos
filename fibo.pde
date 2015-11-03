

class Perfectos extends Sequence {

  String author() {
    String name="Autor: Nicolàs Torres";
    System.out.println(name);
    return name;
  }

  String description() {
    String descri = "  Sucesión de Fibonacci:  La sucesión comienza con los números 1 y 2 y a partir de estos, «cada término es la suma de los dos anteriores», es la relación de recurrencia que la define."; 
    System.out.println(descri);
    return descri;
  }

  int compute(int n) {
    int x= 0, y=1, z=1;
    for (int i=1; i<n; i++) {
      x=y;
      y=z;
      z=x+y;
    }  
    System.out.println(x);
    return x;
  }


  int [] toArray (int n) {

    return super.toArray(n);
  }
  String toString(int n) {
    return super.toString(n);
  }
  
   void display(int n){
    int x= 0, y=1, z=1;
    for (int i=1; i<n; i++) {
      x=y;
      y=z;

      z=x+y;
    
   text(x,i*50,i*50);
   }}
  

void barChart(int n) {
  
  int[] seq = new int[n];
    for (int i=0; i<n; i++)
      seq[i] = compute(i+1);
      int[] serie=seq;    
   println(max(serie));

  int largura = (width/serie.length);

  for (int i=0;i<serie.length;i=i+1) {
    float j = map(serie[i], 0.0, max(serie), 0.0, height);
    if(serie[i]>50){
      fill(200,0,0);
    } else {
      fill(90);
    }
    rect((i*largura)+2, height-j, largura-2, j);
    
  }

}

void lineChart(int n) {
    //TODO misssing implementation
 stroke(0);
background(255); //pinta el fondo de blanco
strokeWeight(1); //ancho de la linea (4 pixeles)

for (int j=0; j<100; j++) {
  for (int i=0; i<108; i++) {
    rect( i * 25, j * 25, 25, 25 );
  }
}

stroke(0, 0, 255);      //
strokeWeight(10);


strokeWeight(10);
line(0, 0, 0, 600);
line(0, 600, 6000, 600);
strokeWeight(3);   
int q;
int p;
p=0;
q=600;
int r;
int s;
r=0;
s=600; 
int x= 0, y=1, z=1;
for (int i=1; i<n; i++) {
  x=y;
  y=z;

  z=x+y;
  stroke(50, 500, 50);
  line(p, q, r, s);
  p=r;
  q=s;
  r=r+50;
  s=s-(x+25);
}
  }
}