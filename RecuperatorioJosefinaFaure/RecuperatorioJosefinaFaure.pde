//link video: https://youtu.be/_OM-Zfz1KNA



PImage referencia;

float escala = 1;
float Radio = 1.25;
color colorHalo;

void setup() {

  size(800, 400);

  referencia = loadImage("rec3.png");

  colorHalo = color(102, 47, 148);

}

void draw() {

  background(47, 184, 123);

  image(referencia, 0, 0);

  pushMatrix();

  translate(600, 200);

  // Rotación con el mouse
  rotate(map(mouseX, 0, width, -PI/24, PI/24));

  halos();

  popMatrix();

}
