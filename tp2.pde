PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PImage imagen5;
PImage imagen6;
  PFont fuente;
  
  boolean cambioImagen = false;
  
  
void setup() {
  
  size(640,480);
  fuente = loadFont("Palatino.vlw");
  textFont(fuente, 30);

}


void draw(){
  
  if(cambioImagen){
  
 imagen1= loadImage("imagen1.jpg");
  image(imagen1, 0, 0);
  println(mouseX, mouseY);
  
  
  
  
   // Ubicacion
  float squareSize = 450; // cuadrado
  float x = (width - squareSize) / 2; 
  float y = (height - squareSize) / 2; 
  // transparencia
  fill(0, 0, 0, 150); 
  rect(x, y, squareSize, squareSize); // squareSize lo centro
  
    textAlign(CENTER, CENTER); 

  fill(255);
  text("Kuroshitsuji (Black Butter) \n es un anime basado en \n el manga del mismo nombre, \n el cual ya cuenta \n con mas de 200 capitulos, \n con 5 temporadas disponibles  \n en diversas plataformas como \n  Netflix o Crunchiroll ", width/2, height/2);
 // text("Esto es una frase \n en dos líneas", width/2, 100); // \n hace un salto de línea
  //antes estaba en 300

  
  }
}
  
 


void mousePressed() {
  // Cambiar la imagen cuando se presiona el mouse
  cambioImagen = !cambioImagen;
}
