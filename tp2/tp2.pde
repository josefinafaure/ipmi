PFont letra1;
PFont letra2;

//fondos

PImage FONDO;
PImage pantalla1;
PImage TITULO1Fff;

PImage imagenboton1f;

PImage imagen21f;

PImage pantalla2;


PImage pantalla6;

PImage imagen32f;
PImage imagen31f;


PImage imagen41f;
PImage imagen42f;

PImage pantalla3;

PImage imagen51f;
PImage imagen52f;
PImage imagen53f;
PImage imagen54f;

PImage pantalla4;

PImage imagen71f;
PImage imagen72f;
PImage imagenboton2f;

float posX = 0;
float velocidad = 3;
//int pantalla = 1;
//float posY = 0;

float transicion1 = 640;
float transicion2 = 640;
float transicion3 = 640;
float transicion4 = 640;

int iniciotiempo;


void setup() {

  size(640, 480);
  frameRate(60);
  println();

  letra1 = createFont("letra1.vlw", 32);
  letra2 = createFont("letra2.vlw", 32);


  FONDO = loadImage("FONDO.jpg");
  pantalla1 = loadImage("pantalla1.jpg");
  TITULO1Fff = loadImage("TITULO1Fff.png");

  imagenboton1f = loadImage("imagenboton1f.png");

  imagen21f = loadImage("imagen21f.png");

  pantalla2 = loadImage("pantalla2.jpg");





  pantalla6 = loadImage("pantalla6.jpg");
  imagen32f = loadImage("imagen32f.png");
  imagen31f= loadImage("imagen31f.png");

  imagen41f = loadImage("imagen41f.png");
  imagen42f = loadImage("imagen42f.png");

  pantalla3 = loadImage("pantalla3.jpg");
  imagen51f = loadImage("imagen51f.png");
  imagen52f = loadImage("imagen52f.png");
  imagen53f = loadImage("imagen53f.png");
  imagen54f = loadImage("imagen54f.png");




  pantalla4 = loadImage("pantalla4.jpg");
  imagen71f = loadImage("imagen71f.png");
  imagen72f = loadImage("imagen72f.png");
  imagenboton2f = loadImage("imagenboton2f.png");

  iniciotiempo = millis();
}

void draw() {

  background(35, 11, 11);

  int tiempo = millis() - iniciotiempo;


  //Diapo 1                                      diapo 1

  if (tiempo <= 8000) {

    image(FONDO, 0, 0);

    image(TITULO1Fff, 0, 0);
    image(imagenboton1f, 270, 290);
  } else if (posX < width) {

    image(pantalla1, 0, 0);
    posX += velocidad;

    image(TITULO1Fff, posX, 0);
  }

  //Diapo 2                                   diapo2


  else if (tiempo <= 16000) {
    image(pantalla1, 0, 0);
    fill(217, 217, 217, 150);
    noStroke();
    rect(46, 99, 538, 284);
    fill(0);
    textFont(letra1);
    textSize(22);
    textAlign(LEFT);
    text( "Alice: Madness Returns nos sumerge en una versión oscura y psicológica del clásico cuento. Tras sobrevivir al trágico incendio que mató a su familia, Alicia vive en un orfanato de Londres bajo el trauma y la culpa. Para escapar de su tormentosa realidad y descubrir la verdad sobre el incendio, viaja mentalmente a un País de las Maravillas corrompido, sangriento y despedazado por su propia locura.", 65, 135, 463, 246 );
    image(imagen21f, 480, 209);
  }

  //Diapo 3                                                diapo3

  else if (tiempo <= 19000) {
    transicion1 -= 4;
    image(pantalla1, transicion1 - 640, 0);
    image(pantalla6, transicion1, 0);
  } else if (tiempo <= 27000) {


    image(pantalla6, 0, 0);

    // alice

    fill(217, 217, 217, 150);
    noStroke();
    rect(99, 50, 476, 182);
    fill(0, 0, 0);
    textSize(22);
    textFont(letra2);
    text("Protagonista de la historia. Es una joven profundamente traumatizada, fría y cínica en el Londres real, pero letal e implacable dentro de su mente.", 123, 118, 364, 111);
    textSize(23);

    textFont(letra1);
    text("ALICE", 123, 67, 113, 42);

    // gato
    fill(217, 217, 217, 150);
    rect(99, 258, 476, 182);
    fill(0, 0, 0);
    textSize(22);

    textFont(letra2);
    text("El icónico felino regresa con un aspecto desnutrido, demacrado y cubierto de tatuajes. Es consciente de la locura de Alicia y actúa como su guía filosófico.", 160, 311, 364, 111);
    textSize(23);
    fill(0, 0, 0);
    textFont(letra1);
    text("GATO", 160, 264, 113, 42);
    image(imagen32f, 26, 258);
    image(imagen31f, 468, 88);
  }

  //Diapo 4                                                      diapo4

  else if (tiempo <= 30000) {

    transicion2 -= 4;
    image(pantalla6, transicion2 - 640, 0);
    image(pantalla2, transicion2, 0);
  } else if (tiempo <= 38000) {



    image(pantalla2, 0, 0);
    // conejo

    fill(217, 217, 217, 15);
    noStroke();
    rect(99, 50, 476, 182);
    fill(255, 255, 255);
    textSize(22);
    text("El personaje que originalmente guio a Alicia al País de las Maravillas aparece aquí con un aspecto esquelético y arrugado. Ya no es una simple criatura apurada.", 123, 118, 364, 111);

    textSize(23);
    fill(250, 250, 250);
    text("CONEJO", 123, 67, 113, 42);

    // sombrerero
    fill(217, 217, 217, 73);
    rect(99, 258, 476, 182);
    fill(0);
    textSize(22);
    text("Antaño un gran amigo, ahora es una víctima directa del quiebre mental de Alicia. Obsesionado con el tiempo y la mecánica. ", 235, 311, 320, 112);
    textSize(23);

    text("SOMBRERERO", 235, 262, 166, 42);
    image(imagen41f, 487, 89);
    image(imagen42f, 1, 197);
  }

  //diapo 5                                                                 diapo5
  else if (tiempo <= 41000) {

    transicion3 -= 4;
    image(pantalla2, transicion3 - 640, 0);
    image(pantalla3, transicion3, 0);
  } else if (tiempo <= 49000) {


    image(pantalla3, 0, 0);
    fill(217, 217, 217, 170);
    noStroke();
    rect(84, 75, 505, 238);
    fill(0, 0, 0);
    textSize(22);
    text("El arsenal de Alicia transforma objetos cotidianos y juguetes en herramientas de pura destrucción. El Pimientero funciona como una ametralladora el Reloj de Bolsillo Conejo actúa como una bomba.", 113, 112, 379, 176);
    textSize(23);
    text("ARMAS", 99, 51, 152, 48);
    image(imagen51f, 492, 180);

    fill(217, 217, 217, 180);
    rect(236, 431, 201, 42);

    fill(217, 217, 217, 180);
    rect(121, 342, 431, 111);
    fill(0, 0, 0);
    textSize(22);
    text("PIMIENTEROS", 268, 446, 167, 33);

    image(imagen52f, 141, 362);
    image(imagen53f, 268, 370);
    image(imagen54f, 395, 370);
    fill(217, 217, 217, 100);
  }
  //FINB

  else if (tiempo <= 52000) {
    transicion4 -= 4;
    image(pantalla3, transicion4 - 640, 0);
  } else {



    image(pantalla4, 0, 0);
    fill(217, 0, 0, 150);
    noStroke();
    rect(30, 50, 580, 238);
    fill(0, 0, 0);
    textSize(48);
    text( "Ojala algun día retomen el proyecto", 129, 76, 377, 188 );

    image(imagen71f, 47, 95);
    image(imagen72f, 516, 95);

    image(imagenboton2f, 214, 361);
    textSize(20);
    fill(200, 200, 200);
    text( "Toca la punta del cuchillo", 170, 424, 327, 45 );


    fill(217, 0, 0, 110);
    noStroke();
    rect(155, 310, 329, 45);
    fill(0);
    textSize(24);
    text( "GRACIAS POR VER", 178, 321, 328, 45 );
  }
}

void mousePressed() {

  if (

    mouseX >= 214 &&
    mouseX <= 291 &&

    mouseY >= 361 &&
    mouseY <= 480

    ) {

    iniciotiempo = millis();


    posX = 0;

    transicion1 = 640;
    transicion2 = 640;
    transicion3 = 640;
    transicion4 = 640;
  }
}
